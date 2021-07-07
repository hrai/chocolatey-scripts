scoop install python
scoop bucket add versions
scoop install neovim-nightly
python3 -m pip install --user --upgrade pynvim

# installing vimplug for neovim
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Copy-Item -Path "init.vim" -Destination "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim" -Force

choco upgrade vim-tux.install /InstallPopUp -y >> %COMPUTERNAME%.log
