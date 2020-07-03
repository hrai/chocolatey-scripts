choco upgrade neovim -y >> %COMPUTERNAME%.log
pip3 install neovim
pip3 install pynvim

# installing vimplug for neovim
md ~\AppData\Local\nvim-data\site\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim-data\site\autoload\plug.vim"
  )
)

choco upgrade vim-tux.install /InstallPopUp -y >> %COMPUTERNAME%.log
