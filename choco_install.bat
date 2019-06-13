:: Utilities
choco install 7zip -y >> %COMPUTERNAME%.log
choco install ccleaner -y >> %COMPUTERNAME%.log
choco install firefox -y >> %COMPUTERNAME%.log
choco install foxitreader -y >> %COMPUTERNAME%.log
choco install google-chrome-x64 -y >> %COMPUTERNAME%.log
choco install googledrive -y >> %COMPUTERNAME%.log
choco install hackfont -y >> %COMPUTERNAME%.log
choco install nodejs-lts -y >> %COMPUTERNAME%.log
choco install notepadplusplus -y >> %COMPUTERNAME%.log
choco install spotify -y >> %COMPUTERNAME%.log

:: Dev tools
choco install ag -y >> %COMPUTERNAME%.log
choco install conemu -y >> %COMPUTERNAME%.log
choco install cmake --installargs 'ADD_CMAKE_TO_PATH=System' -y >> %COMPUTERNAME%.log
choco install dotnetcore -y >> %COMPUTERNAME%.log
choco install dotnetcore-sdk  -y >> %COMPUTERNAME%.log
choco install docker -y >> %COMPUTERNAME%.log
choco install editorconfig.core -y >> %COMPUTERNAME%.log
choco install fiddler -y >> %COMPUTERNAME%.log
choco install git -y >> %COMPUTERNAME%.log
choco install git-credential-manager-for-windows -y >> %COMPUTERNAME%.log
choco install gitextensions -y >> %COMPUTERNAME%.log
choco install kdiff3 -y >> %COMPUTERNAME%.log
choco install postman -y >> %COMPUTERNAME%.log
choco install postsharp -y >> %COMPUTERNAME%.log
choco install powershell5 -y >> %COMPUTERNAME%.log
choco install python --version 3.6.3 --x86force -y >> %COMPUTERNAME%.log
choco install pip --x86force >> %COMPUTERNAME%.log
choco install rabbitmq -y >> %COMPUTERNAME%.log
choco install resharper -y >> %COMPUTERNAME%.log
choco install sql-server-management-studio -y >> %COMPUTERNAME%.log
choco install vim -y >> %COMPUTERNAME%.log
choco install visualstudio2017professional -y >> %COMPUTERNAME%.log
choco install vscode -y >> %COMPUTERNAME%.log

:: @echo Now restart to finalise the .Net 3.5 install
