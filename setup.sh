cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.
cp -r -v home/.vim ~/
touch ~/.zsh_history
cp -r -v wallpapers ~/Pictures/
mkdir ~/.local/share/fonts
cp feather.ttf ~/.local/share/fonts

chsh -s /usr/bin/zsh
