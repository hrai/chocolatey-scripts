Write-Output 'Install powershell before proceeding...'
Write-Output 'https://github.com/PowerShell/powershell/releases'

Invoke-Expression -Command "$PSScriptRoot\install_chocolatey.ps1"
Invoke-Expression -Command "$PSScriptRoot\install_choco_packages.ps1"
Invoke-Expression -Command "$PSScriptRoot\install_neovim.ps1"
Invoke-Expression -Command "$PSScriptRoot\install_scoop.ps1"
Invoke-Expression -Command "$PSScriptRoot\install_scoop_packages.ps1"

Write-Output 'Open git-bash and run below...'
Write-Output "cd d:/dot-files && './5_setup_git.sh' && ./2_move_bashrc.sh && ./6_set_vim_configs.sh && ./8_move_editorconfig.sh"
