$name = $(Get-Date -Format "yyyy-MM-dd-HHmmss")
$path = Join-Path $PSScriptRoot "input/posts/${name}.md"

$content = @"
Title: ${Title}
Published: $(Get-Date -Format "MM/dd/yyyy")
Tags: ${tagText}
---
"@

Set-Content -Path $path -Value $content