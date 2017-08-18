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
pushd ~/.vim/plugin/YouCompleteMe
./install.py --clang-completer
popd
```
