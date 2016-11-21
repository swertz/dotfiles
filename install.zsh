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

for f in ${install_dir}/resources/*rc ${install_dir}/resources/*.conf; do
    install_link "$f" "$HOME/.$(basename "$f")"
done

for f in ${install_dir}/scripts/*; do
    install_link "$f" "$HOME/.$(basename "$f")"
done

for f in "profile" "gitconfig"; do
    install_link "${install_dir}/$f" "$HOME/.$f"
done

if [ ! -d $HOME/.ssh ]; then mkdir $HOME/.ssh; fi
install_link "${install_dir}/ssh/config" "$HOME/.ssh/config"

install_link ${install_dir}/resources/zsh/agnoster-fast.zsh-theme $HOME/.oh-my-zsh/themes/
