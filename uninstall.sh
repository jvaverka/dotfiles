#!/bin/bash

# only execute from dotfiles directory
BASENAME=`basename $(pwd)`
if [ $BASENAME != "dotfiles" ]; then
  echo "Execute script from dotfiles directory."
  exit
fi

# neovim
NVIM_DIR=$HOME/.config/nvim
echo "Uninstalling Neovim config ..."
stow -D nvim -t $NVIM_DIR
echo "Neovim configuration uninstalled!"

# julia config
JULIA_DIR=$HOME/.julia/config
echo "Uninstalling Julia config ..."
stow -D julia -t $JULIA_DIR
echo "Julia configuration uninstalled!"

# bash config
BACKUP_BASHRC=$HOME/.bashrc
echo "Uninstalling Bash config ..."
stow -D bash -t $HOME
echo "Bash configuration uninstalled!"

# notify
echo "Done"
