param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$projectRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot ".."))
$errors = [System.Collections.Generic.List[string]]::new()
$warnings = [System.Collections.Generic.List[string]]::new()

function Add-ValidationError {
    param([Parameter(Mandatory)][string]$Message)
    $script:errors.Add($Message)
}

function Add-ValidationWarning {
    param([Parameter(Mandatory)][string]$Message)
    $script:warnings.Add($Message)
}

Write-Host "Validating Paper Ember at: $projectRoot"

$requiredFiles = @(
    "theme.css",
    "manifest.json",
    "README.md",
    "README.en.md",
    "LICENSE",
    "screenshot.png",
    "scripts\validate.ps1",
    ".github\workflows\validate.yml"
)

foreach ($relativePath in $requiredFiles) {
    $fullPath = Join-Path $projectRoot $relativePath
    if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
        Add-ValidationError "Missing required file: $relativePath"
    }
}

$manifestPath = Join-Path $projectRoot "manifest.json"
if (Test-Path -LiteralPath $manifestPath -PathType Leaf) {
    try {
        $manifestText = Get-Content -LiteralPath $manifestPath -Raw
        $manifest = $manifestText | ConvertFrom-Json -ErrorAction Stop
        $requiredManifestFields = @("name", "version", "minAppVersion", "author")

        foreach ($field in $requiredManifestFields) {
            $property = $manifest.PSObject.Properties[$field]
            if ($null -eq $property -or [string]::IsNullOrWhiteSpace([string]$property.Value)) {
                Add-ValidationError "manifest.json is missing a non-empty '$field' field."
            }
        }

        $versionProperty = $manifest.PSObject.Properties["version"]
        if ($null -ne $versionProperty -and
            [string]$versionProperty.Value -notmatch '^\d+\.\d+\.\d+(?:-[0-9A-Za-z.-]+)?$') {
            Add-ValidationError "manifest.json version is not a reasonable semantic version: $($versionProperty.Value)"
        }

        $minimumVersionProperty = $manifest.PSObject.Properties["minAppVersion"]
        if ($null -ne $minimumVersionProperty -and
            [string]$minimumVersionProperty.Value -notmatch '^\d+\.\d+\.\d+$') {
            Add-ValidationError "manifest.json minAppVersion is not a three-part version: $($minimumVersionProperty.Value)"
        }
    }
    catch {
        Add-ValidationError "manifest.json is not valid JSON: $($_.Exception.Message)"
    }
}

$themePath = Join-Path $projectRoot "theme.css"
if (Test-Path -LiteralPath $themePath -PathType Leaf) {
    $css = Get-Content -LiteralPath $themePath -Raw

    if ([string]::IsNullOrWhiteSpace($css)) {
        Add-ValidationError "theme.css is empty."
    }
    else {
        $openingBraces = ([regex]::Matches($css, '\{')).Count
        $closingBraces = ([regex]::Matches($css, '\}')).Count
        if ($openingBraces -ne $closingBraces) {
            Add-ValidationError "theme.css braces are unbalanced: $openingBraces opening and $closingBraces closing."
        }

        if ($css -match '(?im)^\s*@import\b') {
            Add-ValidationError "theme.css contains a forbidden @import rule."
        }

        if ($css -match '(?i)https?://') {
            Add-ValidationError "theme.css contains a remote HTTP/HTTPS resource."
        }

        if ($css -match 'url\(["'']?\./') {
            Add-ValidationError "theme.css references a separate local resource that the Community Themes installer will not download."
        }

        if ($css -match '(?is)data:(?:font|application)/[^;]+;base64,') {
            Add-ValidationError "theme.css contains a base64 font or application resource."
        }

        if ($css -match '(?is)data:[^;\s]+;base64,[A-Za-z0-9+/=]{4096,}') {
            Add-ValidationError "theme.css contains a large embedded base64 resource."
        }

        $requiredSections = 1..12 | ForEach-Object { "/* $_." }
        foreach ($sectionMarker in $requiredSections) {
            if (-not $css.Contains($sectionMarker, [System.StringComparison]::Ordinal)) {
                Add-ValidationWarning "theme.css is missing organizational section marker '$sectionMarker'."
            }
        }

        if ($css -notmatch '(?s)/\*\s*@settings\b.*?\*/') {
            Add-ValidationError "theme.css does not contain a Style Settings metadata block."
        }

        $textSelectionRule = @'
.markdown-source-view.mod-cm6 .cm-content,
.markdown-preview-view .markdown-preview-sizer {
  -webkit-user-select: text;
  user-select: text;
}
'@
        if (-not $css.Contains($textSelectionRule, [System.StringComparison]::Ordinal)) {
            Add-ValidationError "theme.css does not explicitly preserve mouse text selection in editor and reading views."
        }

        if ($css -match '(?i)--eone-selection\s*:\s*rgba\(\s*var\(\s*--paper-ember-accent-rgb\s*\)') {
            Add-ValidationError "theme.css selection color depends on --interactive-accent-rgb, which may be undefined and make text selection invisible."
        }

        $selectionColors = ([regex]::Matches(
            $css,
            '(?i)--eone-selection\s*:\s*color-mix\(\s*in\s+srgb\s*,\s*var\(\s*--interactive-accent\s*\)\s+(?:19|22)%\s*,\s*transparent\s*\)\s*;'
        )).Count
        if ($selectionColors -ne 2) {
            Add-ValidationError "theme.css must define visible light and dark selection colors from --interactive-accent."
        }
    }
}

$scriptPaths = @(
    (Join-Path $projectRoot "scripts\install.ps1"),
    (Join-Path $projectRoot "scripts\uninstall.ps1"),
    (Join-Path $projectRoot "scripts\validate.ps1")
)

foreach ($scriptPath in $scriptPaths) {
    if (-not (Test-Path -LiteralPath $scriptPath -PathType Leaf)) {
        continue
    }

    $tokens = $null
    $parseErrors = $null
    $null = [System.Management.Automation.Language.Parser]::ParseFile(
        $scriptPath,
        [ref]$tokens,
        [ref]$parseErrors
    )

    foreach ($parseError in $parseErrors) {
        Add-ValidationError "PowerShell syntax error in $(Split-Path $scriptPath -Leaf): $($parseError.Message)"
    }
}

$stylelint = Get-Command stylelint -ErrorAction SilentlyContinue
if ($null -ne $stylelint -and (Test-Path -LiteralPath $themePath -PathType Leaf)) {
    Add-ValidationWarning "stylelint is available, but no project configuration is present; built-in dependency-free checks were used."
}

foreach ($warning in $warnings) {
    Write-Warning $warning
}

if ($errors.Count -gt 0) {
    foreach ($validationError in $errors) {
        Write-Error $validationError
    }
    Write-Host "Validation failed with $($errors.Count) error(s)."
    exit 1
}

Write-Host "[PASS] Required files are present."
Write-Host "[PASS] manifest.json is valid and contains required fields."
Write-Host "[PASS] theme.css passed structural and resource checks."
Write-Host "[PASS] Community Themes release assets are self-contained."
Write-Host "[PASS] PowerShell scripts passed parser checks."
Write-Host "Validation completed successfully with $($warnings.Count) warning(s)."
exit 0
