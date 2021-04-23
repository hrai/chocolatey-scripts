scoop install python
scoop install neovim
python3 -m pip install --user --upgrade pynvim

# installing vimplug for neovim
mkdir -f ~\AppData\Local\nvim-data\site\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim-data\site\autoload\plug.vim"
  )
)

choco upgrade vim-tux.install /InstallPopUp -y >> %COMPUTERNAME%.log
