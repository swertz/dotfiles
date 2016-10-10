#!/bin/zsh

install_dir=~/.dotfiles

for f in ${install_dir}/resources/*rc; do
    ln -bf -s "$f" ~/.$(basename "$f")
done

for f in ${install_dir}/scripts/*; do
    ln -bf -s "$f" ~/.$(basename "$f")
done

ln -bf -s ${install_dir}/profile ~/.profile

if [ ! -d ~/.ssh ]; then mkdir ~/.ssh; fi
ln -bf -s ${install_dir}/ssh/config ~/.ssh/config

