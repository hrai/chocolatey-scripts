:: Utilities
choco upgrade 7zip -y >> %COMPUTERNAME%.log
:: choco upgrade ccleaner -y >> %COMPUTERNAME%.log
:: choco upgrade firefox -y >> %COMPUTERNAME%.log
choco upgrade firefox-dev --pre -y >> %COMPUTERNAME%.log
choco upgrade foxitreader -y >> %COMPUTERNAME%.log
choco upgrade googlechrome -y >> %COMPUTERNAME%.log
:: choco upgrade googledrive -y >> %COMPUTERNAME%.log
choco upgrade nvm -y >> %COMPUTERNAME%.log
::choco upgrade notepadplusplus -y >> %COMPUTERNAME%.log

:: Dev tools
choco upgrade dotnetcore-sdk  -y >> %COMPUTERNAME%.log
:: choco upgrade docker-desktop -y >> %COMPUTERNAME%.log
choco upgrade editorconfig.core -y >> %COMPUTERNAME%.log
choco upgrade fiddler -y >> %COMPUTERNAME%.log
choco upgrade git-credential-manager-for-windows -y >> %COMPUTERNAME%.log
choco upgrade gitextensions -y >> %COMPUTERNAME%.log
choco upgrade kdiff3 -y >> %COMPUTERNAME%.log
choco upgrade nuget.commandline -y >> %COMPUTERNAME%.log
:: choco upgrade nswagstudio -y >> %COMPUTERNAME%.log
:: choco upgrade postman -y >> %COMPUTERNAME%.log
choco upgrade powershell-core --install-arguments='"ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1"' -y >> %COMPUTERNAME%.log
choco upgrade ripgrep -y >> %COMPUTERNAME%.log
choco upgrade universal-ctags -y >> %COMPUTERNAME%.log
choco upgrade vscode -y >> %COMPUTERNAME%.log
choco upgrade microsoft-windows-terminal -y >> %COMPUTERNAME%.log
choco upgrade yarn -y >> %COMPUTERNAME%.log

Powershell.exe -executionpolicy remotesigned -File install_neovim.ps1

scoop install bat
scoop install fd
scoop install fzf
scoop install git
scoop install jq
scoop install tldr
scoop install zoxide

@echo Done installing the programs

refreshenv

:: @echo Installing python packages
:: pip3 install awscli

