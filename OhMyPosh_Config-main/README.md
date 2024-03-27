# OhMyPosh_Config
>winget install JanDeDobbeleer.OhMyPosh

>Install-Module PSReadLine -Force -SkipPublisherCheck

>Install-Module -Name Terminal-Icons

>https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip

# Microsoft.PowerShell_profile.ps1 ( $PROFILE )
>Import-Module -Name Terminal-Icons \
>Set-PSReadLineOption -PredictionSource History \
>Set-PSReadLineOption -PredictionViewStyle ListView \
>Set-PSReadLineOption -EditMode Windows \
>oh-my-posh init powershell --config ~/AppData/Local/Programs/oh-my-posh/themes/ohmyposhv3-v2.json| Invoke-Expression
