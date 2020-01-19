Param($tag)

$name = $(Get-Date -Format "yyyy-MM-dd-HHmmss")
$path = Join-Path $PSScriptRoot "input/posts/${name}.md"

$template = ""
switch -Exact ($tag) {
    "cooking" {
        $template = @"
# 動機
# 材料
|材料|量|
|---|---|
|||
# 参考
[]()
# 手順
# 感想
"@
    }
    Default { }
}

$content = @"
Title: 
Published: $(Get-Date -Format "MM/dd/yyyy")
Tags: $tag
---
$template
"@



Set-Content -Path $path -Value $content