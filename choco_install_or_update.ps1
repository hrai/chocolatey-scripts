function UpgradeApp ($arg) {
    Write-Host "Upgrading $arg..."
    choco upgrade $arg -y >> %COMPUTERNAME%.log
}

function InstallApp ($arg) {
    Write-Host "Installing $arg..."
    choco install $arg -y >> %COMPUTERNAME%.log
}

$User_Response = Read-Host -Prompt 'Do you want to install or update apps?'
If ($User_Response -eq 'i') {
    Write-Host "Installing apps..."

    # Utilities
    InstallApp 7zip
    InstallApp ccleaner
    InstallApp firefox
    InstallApp foxitreader
    InstallApp google-chrome-x64
    InstallApp googledrive
    InstallApp nodejs-lts
    InstallApp notepadplusplus
    InstallApp spotify

    # Dev tools
    InstallApp conemu
    InstallApp dotnetcore
    InstallApp dotnetcore-sdk 
    InstallApp docker
    InstallApp fiddler
    InstallApp git
    InstallApp git-credential-manager-for-windows
    InstallApp gitextensions
    InstallApp kdiff3
    InstallApp linqpad
    InstallApp postman
    InstallApp postsharp
    InstallApp powershell5
    InstallApp rabbitmq
    InstallApp resharper
    InstallApp sql-server-management-studio
    InstallApp vim
    InstallApp visualstudio2017professional
    InstallApp vscode

    # Package install for ack
    InstallApp strawberryperl
    InstallApp ack

    # @echo Now restart to finalise the .Net 3.5 install
}
Else  {
    Write-Host "Updating apps..."

    # Utilities
    UpgradeApp 7zip
    UpgradeApp ccleaner
    UpgradeApp firefox
    UpgradeApp foxitreader
    UpgradeApp google-chrome-x64
    UpgradeApp googledrive
    UpgradeApp nodejs-lts
    UpgradeApp notepadplusplus
    UpgradeApp spotify

    # Dev tools
    UpgradeApp dotnetcore
    UpgradeApp dotnetcore-sdk
    UpgradeApp docker
    UpgradeApp fiddler
    UpgradeApp git
    UpgradeApp git-credential-manager-for-windows
    UpgradeApp gitextensions
    UpgradeApp kdiff3
    UpgradeApp linqpad
    UpgradeApp postman
    UpgradeApp postsharp
    UpgradeApp powershell5
    UpgradeApp rabbitmq
    UpgradeApp resharper
    UpgradeApp sql-server-management-studio
    UpgradeApp vim
    UpgradeApp visualstudio2017professional
    UpgradeApp vscode

    # Package install for ack
    UpgradeApp strawberryperl
    UpgradeApp ack

    # @echo Now restart to finalise the .Net 3.5 install
} 
  
