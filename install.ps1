$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot "weasel.custom.yaml"
$targetDir = Join-Path $env:APPDATA "Rime"
$target = Join-Path $targetDir "weasel.custom.yaml"

if (-not (Test-Path -LiteralPath $source)) {
    throw "Theme file not found: $source"
}

if (-not (Test-Path -LiteralPath $targetDir)) {
    throw "Rime config directory not found: $targetDir"
}

$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"

if (Test-Path -LiteralPath $target) {
    $backup = Join-Path $targetDir "weasel.custom.yaml.bak.$timestamp"
    Copy-Item -LiteralPath $target -Destination $backup -Force
    Write-Host "Backed up existing config to: $backup"
}

Copy-Item -LiteralPath $source -Destination $target -Force

Write-Host ""
Write-Host "Installed theme to: $target"
Write-Host "Next step: right-click the Weasel tray icon and choose 'Redeploy'."
Write-Host ""
Write-Host "Default light theme: apple-mist-light-sage"
Write-Host "Default dark theme:  apple-mist-dark-sky"
