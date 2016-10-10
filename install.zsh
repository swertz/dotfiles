#!/bin/zsh

function install_link {
  orig=$1
  dest=$2
  if [[ -f "${dest}" && ! -h "${dest}" ]]; then
    echo "Making back-up of ${dest}"
    cp "${dest}" "${dest}".bak
  fi
  ln -fs ${orig} ${dest}
}

install_dir=$HOME/.dotfiles

for f in ${install_dir}/resources/*rc; do
    install_link "$f" "$HOME/.$(basename "$f")"
done

for f in ${install_dir}/scripts/*; do
    install_link "$f" "$HOME/.$(basename "$f")"
done

install_link "${install_dir}/profile" "$HOME/.profile"

if [ ! -d $HOME/.ssh ]; then mkdir $HOME/.ssh; fi
install_link "${install_dir}/ssh/config" "$HOME/.ssh/config"

