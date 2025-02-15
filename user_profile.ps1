# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox

# Load prompt config
$PROMPT_CONFIG = "$env:POSH_THEMES_PATH/wopian.omp.json"
oh-my-posh --init --shell pwsh --config "$PROMPT_CONFIG" | Invoke-Expression

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias touch ni
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe' 
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe' 
