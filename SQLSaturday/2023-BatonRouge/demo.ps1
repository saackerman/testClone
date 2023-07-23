# show profile on Windows and Linux
$profile | Select-Object *

# Creating ANSI escape sequences for PS5.1
$RedText = "`e[91m" + 'This is red text' + "`e[0m"
$RedText
${esc} = [char]0x1b
$RedText = "${esc}[91m" + 'This is red text' + "${esc}[0m"
$RedText

# Show cmdlet differences between versions
Get-Command Invoke-RestMethod -Syntax
Get-Command Test-Connection -Syntax

# Experimental features
Get-ExperimentalFeature

# New operators (null, ternary, and chain operators)

#Host-specific commands - VS Code != console/terminal
$Host.Version
$PSVersionTable.PSVersion

# Platform specific
dir variable:is* # not available in PS5.1
# Environment variables are case sensitive in Linux
$env:path -split ';'
$env:PATH -split [System.IO.Path]::PathSeparator

[System.IO.Path] | Get-Member -Static -Type Property

'DirectorySeparatorChar', 'PathSeparator', 'VolumeSeparatorChar' |
    ForEach-Object { [System.IO.Path]::$_ }

# Aliases
Get-Command cat, clear, cp, diff, kill, ls, man, mount, mv, ps, rm, rmdir,
sleep, sort, tee, write

# Tools and environment settings

$PSDefaultParameterValues
gc function:prompt
$PSStyle
$GitPromptSettings
Get-PSReadLineKeyHandler
Get-PSReadLineOption

