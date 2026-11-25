$ErrorActionPreference = "Stop"

$source = "$HOME\Downloads\emojis-cleaned-categorized"
$repo = (Get-Location).Path

$oldManifestPath = "$repo\assets\manifest.json"
$newManifestPath = "$source\manifest.json"

$old = Get-Content $oldManifestPath -Raw -Encoding UTF8 | ConvertFrom-Json
$new = Get-Content $newManifestPath -Raw -Encoding UTF8 | ConvertFrom-Json

$oldFiles = @($old | ForEach-Object { $_.file })
$additions = @($new | Where-Object { $_.file -notin $oldFiles })

Write-Host "Previous: $($old.Count)" -ForegroundColor Cyan
Write-Host "New pack: $($new.Count)" -ForegroundColor Cyan
Write-Host "Adding: $($additions.Count)" -ForegroundColor Green
Write-Host "Expected total: $($old.Count + $additions.Count)" -ForegroundColor Yellow

$confirm = Read-Host "Type YES to continue"

if ($confirm -ne "YES") {
    Write-Host "Cancelled"
    exit
}

$copied = 0
$missing = 0

foreach ($item in $additions) {
    $from = Join-Path "$source\assets" $item.file
    $to = Join-Path "$repo\assets" $item.file

    if (!(Test-Path $from)) {
        Write-Warning "Missing file: $($item.file)"
        $missing++
        continue
    }

    New-Item -ItemType Directory -Force -Path (Split-Path $to -Parent) | Out-Null
    Copy-Item $from $to -Force
    $copied++
}

$merged = @($old) + @($additions)

$json = ConvertTo-Json -InputObject $merged -Depth 20
[System.IO.File]::WriteAllText(
    $oldManifestPath,
    $json,
    [System.Text.UTF8Encoding]::new($false)
)

Write-Host ""
Write-Host "Transfer completed!" -ForegroundColor Green
Write-Host "Copied: $copied" -ForegroundColor Green
Write-Host "Missing: $missing" -ForegroundColor Yellow
Write-Host "Final manifest: $($merged.Count)" -ForegroundColor Cyan