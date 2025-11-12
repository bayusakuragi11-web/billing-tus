# fix_paths.ps1
# Replace leading '/assets/' references to 'assets/' in HTML/CSS/JS/MD files
# Usage: run from repository root (d:\billingtus)

$patterns = @(
    '"/assets/',
    "'/assets/",
    '="/assets/',
    "=' /assets/"
)

Write-Host "Scanning files and replacing leading '/assets/' to 'assets/'..."

$files = Get-ChildItem -Path . -Include *.html,*.htm,*.css,*.js,*.md -Recurse
$changed = 0
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    $new = $text
    # Replace double-quote prefixed
    $new = $new -replace '"/assets/','"assets/'
    # Replace single-quote prefixed
    $new = $new -replace "'/assets/","'assets/"
    # Replace src=/assets/ (no quotes)
    $new = $new -replace '\s/src=/assets/',' src=assets/'
    # Replace href=/assets/ (no quotes)
    $new = $new -replace '\s/href=/assets/',' href=assets/'
    if ($new -ne $text) {
        Set-Content -Path $f.FullName -Value $new -Encoding UTF8
        Write-Host "Updated: $($f.FullName)"
        $changed++
    }
}

Write-Host "Done. Files changed: $changed"
