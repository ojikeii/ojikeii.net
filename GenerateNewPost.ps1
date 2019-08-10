$name = $(Get-Date -Format "yyyy-MM-dd-HHmmss")
$path = Join-Path $PSScriptRoot "input/posts/${name}.md"

$content = @"
Title: 
Published: $(Get-Date -Format "MM/dd/yyyy")
Tags: 
---
"@

Set-Content -Path $path -Value $content