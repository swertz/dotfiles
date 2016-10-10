#!/bin/zsh

install_dir=~/.dotfiles

for f in $(install_dir)/resources/*rc do
    ln -s "$f" ~/.$(basename "$f")
done

ln -s $(install_dir)/profile ~/.profile

if [ ! -d ~/.ssh ]; then mkdir ~/.ssh; fi
ln -s $(install_dir)/ssh/config ~/.ssh/config

