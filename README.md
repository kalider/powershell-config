# My Powershell Config
## Requirement 
### Scope
```powershell
iwr -useb get.scoop.sh | iex
```
### Git
```powershell
winget install -e --id Git.Git
```
### Curl Sudo jq
```powershell
scoop install curl sudo jq
```
### Neovim
```powershell
scoop install neovim gcc
```
## Installation
* clone this repo to the `.config` folder
```powershell
git clone https://github.com/kalider/powershell-config.git powershell
```
* Install module `posh-git` and `oh-my-posh`
```powershell
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
```
* Include powershell config to the main config

    run this command:
    ```powershell
    nvim $PROFILE.CurrentUserCurrentHost
    ```
    and then add this
    ```
    . $env:USERPROFILE\.config\powershell\user_profile.ps1
    ```
