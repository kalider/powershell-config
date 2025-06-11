# Prompt
Import-Module posh-git

# Load prompt config
$PROMPT_CONFIG = "$env:USERPROFILE\.config\powershell\tah.omp.json"
oh-my-posh --init --shell pwsh --config "$PROMPT_CONFIG" | Invoke-Expression

# Terminal Icons
Import-Module Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadlineKeyHandler -Chord 'Alt+k' -Function PreviousSuggestion
Set-PSReadlineKeyHandler -Chord 'Alt+j' -Function NextSuggestion

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias touch ni
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe' 
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe' 

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
