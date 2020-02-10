:: Utilities
choco upgrade 7zip -y >> %COMPUTERNAME%.log
choco upgrade ccleaner -y >> %COMPUTERNAME%.log
choco upgrade firefox -y >> %COMPUTERNAME%.log
choco upgrade foxitreader -y >> %COMPUTERNAME%.log
choco upgrade google-chrome-x64 -y >> %COMPUTERNAME%.log
choco upgrade googledrive -y >> %COMPUTERNAME%.log
choco upgrade hackfont -y >> %COMPUTERNAME%.log
choco upgrade nodejs-lts -y >> %COMPUTERNAME%.log
choco upgrade notepadplusplus -y >> %COMPUTERNAME%.log
choco upgrade spotify -y >> %COMPUTERNAME%.log

:: Dev tools
choco upgrade ag -y >> %COMPUTERNAME%.log
choco upgrade conemu -y >> %COMPUTERNAME%.log
choco upgrade cmake --installargs 'ADD_CMAKE_TO_PATH=System' -y >> %COMPUTERNAME%.log
choco upgrade dotnetcore -y >> %COMPUTERNAME%.log
choco upgrade dotnetcore-sdk  -y >> %COMPUTERNAME%.log
choco upgrade docker-desktop -y >> %COMPUTERNAME%.log
choco upgrade editorconfig.core -y >> %COMPUTERNAME%.log
choco upgrade fiddler -y >> %COMPUTERNAME%.log
choco upgrade git -y >> %COMPUTERNAME%.log
choco upgrade git-credential-manager-for-windows -y >> %COMPUTERNAME%.log
choco upgrade gitextensions -y >> %COMPUTERNAME%.log
choco upgrade kdiff3 -y >> %COMPUTERNAME%.log
choco upgrade postman -y >> %COMPUTERNAME%.log
choco upgrade postsharp -y >> %COMPUTERNAME%.log
choco upgrade powershell5 -y >> %COMPUTERNAME%.log
::choco upgrade python --version 3.6.3 --x86force -y >> %COMPUTERNAME%.log
choco upgrade python3 -y >> %COMPUTERNAME%.log
::choco upgrade pip --x86force >> %COMPUTERNAME%.log
choco upgrade pip3 -y >> %COMPUTERNAME%.log
:: choco upgrade rabbitmq -y >> %COMPUTERNAME%.log
:: choco upgrade resharper -y >> %COMPUTERNAME%.log
choco upgrade sql-server-management-studio -y >> %COMPUTERNAME%.log
choco upgrade universal-ctags -y >> %COMPUTERNAME%.log
choco upgrade vim-tux.install /InstallPopUp -y >> %COMPUTERNAME%.log
choco upgrade visualstudio2019professional -y >> %COMPUTERNAME%.log
choco upgrade vscode -y >> %COMPUTERNAME%.log
choco upgrade microsoft-windows-terminal -y >> %COMPUTERNAME%.log
choco upgrade yarn -y >> %COMPUTERNAME%.log

:: @echo Done installing the programs
