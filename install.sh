#!/bin/bash

# execute from dotfiles directory
BASENAME=`basename $(pwd)`
if [ $BASENAME != "dotfiles" ]
then
  echo "Execute script from dotfiles directory."
  exit
fi

# neovim
NVIM_DIR=$HOME/.config/nvim
CONFIG_NVIM="yes"
hash nvim 2>/dev/null || unset CONFIG_NVIM
if [ -z "${CONFIG_NVIM+set}" ]
then
  echo "Neovim not found."
  echo "Skipping Neovim config."
else
  echo "Preparing to install Neovim config ..."
  if [ ! -d "$NVIM_DIR" ]
  then
    echo "Making $NVIM_DIR dir."
    mkdir -p $NVIM_DIR
  fi
  echo "Installing Neovim config to $NVIM_DIR"
  stow nvim -t $NVIM_DIR
  echo "Neovim configuration complete!"
fi

# julia
JULIA_DIR=$HOME/.julia/config
STARTUP_JL=$JULIA_DIR/startup.jl
CONFIG_JULIA="yes"
hash julia 2>/dev/null || unset CONFIG_JULIA
if [ -z "${CONFIG_JULIA+set}" ]
then
  echo "Julia not found."
  echo "Skipping Julia config."
else
  echo "Preparing to install Julia config ..."
  if [ ! -d "$JULIA_DIR" ]
  then
    echo "Making $JULIA_DIR dir."
    mkdir -p $JULIA_DIR
  fi
  if [ -e "$STARTUP_JL" -a ! -L "$STARTUP_JL" ]
  then
    echo "Backing up old config to ./julia/startup.jl.bak"
    mv $STARTUP_JL julia/startup.jl.bak
  fi
  echo "Installing Julia config to $JULIA_DIR"
  stow julia -t $JULIA_DIR
  echo "Julia configuration complete!"
fi

# bash
BACKUP_BASHRC=$HOME/.bashrc
CONFIG_BASH="yes"
hash bash 2>/dev/null || unset CONFIG_BASH
if [ -z "${CONFIG_BASH+set}" ]
then
  echo "Bash not found."
  echo "Skipping Bash config."
else
  echo "Preparing to install Bash config ..."
  if [ -e "$BACKUP_BASHRC" -a ! -L "$BACKUP_BASHRC" ]
  then
    echo "Backing up old config to ./bash/bashrc.bak"
    mv $BACKUP_BASHRC bash/bashrc.bak
  fi
  echo "Installing Bash config to $HOME"
  stow bash -t $HOME
  echo "Bash configuration complete!"
fi

# alacritty
ALACRITTY_DIR=$HOME/.config/alacritty
ALACRITTY_YAML=$ALACRITTY_DIR/alacritty.yml
CONFIG_ALACRITTY="yes"
hash alacritty 2>/dev/null || unset CONFIG_ALACRITTY
if [ -z "${CONFIG_ALACRITTY+set}" ]
then
  echo "Alacritty not found."
  echo "Skipping Alacritty config."
else
  echo "Preparing to install Alacritty config ..."
  if [ -e "$ALACRITTY_YAML" -a ! -L "$ALACRITTY_YAML" ]
  then
    echo "Backing up old config to ./alacritty/alacritty.yml.bak"
    mv $ALACRITTY_YAML alacritty/alacritty.yml.bak
  fi
  echo "Installing Alacritty config to $ALACRITTY_DIR"
  stow alacritty -t $ALACRITTY_DIR
  echo "Alacritty configuration complete!"
fi

# notify
echo "Done."
