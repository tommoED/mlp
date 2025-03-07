$urlFiles = Get-ChildItem -Path $PSScriptRoot -Filter "*.url"

foreach ($file in $urlFiles) {
    $content = Get-Content $file.FullName
    $url = ($content | Select-String -Pattern "URL=(.*)").Matches.Groups[1].Value
    Write-Host "$($file.BaseName):"
    Write-Host $url
    Write-Host "--------------------------------"
}
