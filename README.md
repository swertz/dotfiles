# dotfiles

Install as (in a zsh terminal!):

```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone git@github.com:swertz/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
./install.zsh
```


Configuring vim:
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall
pushd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
# Or on ingrid:
#./install.py
popd
patch ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.dotfiles/resources/patch_solarized.patch
```

Getting ssh agent to work *all the time* (requires `ksshaskpass` package and activated KDE wallet):
```
echo "#!/bin/sh\nssh-add -q < /dev/null" > ~/.config/autostart/ssh.sh
chmod +x ~/.config/autostart/ssh.sh
mkdir -p ~/.config/plasma-workspace/env
echo "#!/bin/sh\nexport SSH_ASKPASS=/usr/bin/ksshaskpass\nexport GIT_ASKPASS=/usr/bin/ksshaskpass" > ~/.config/plasma-workspace/env/askpass.sh
chmod +x ~/.config/plasma-workspace/env/askpass.sh
```
