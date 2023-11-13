#!/bin/bash

set -e

if ! command -v readlink >/dev/null 2>&1 ; then
    echo "Error: readlink not found on system!"
    exit 1
fi

cdir="$HOME/.config/"

# Create symlink for kitty
mkdir -p "$cdir/kitty"
ln -sf "$(readlink -e "$(pwd)/.config/kitty/kitty.conf")" "$cdir/kitty/kitty.conf"
ln -sf "$(readlink -e "$(pwd)/.config/kitty/theme.conf")" "$cdir/kitty/theme.conf"

# Create symlink for nvim
mkdir -p "$cdir/nvim"
ln -sf "$(readlink -e "$(pwd)/.config/nvim/init.vim")" "$cdir/nvim/init.vim"

# Create symlink for tmux
if [ -f $HOME/.tmux.conf ];
then
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi
ln -sf "$(readlink -e "$(pwd)/.tmux.conf")" "$HOME/.tmux.conf"

# Create symlink for bashrc
if [ -f $HOME/.bashrc ];
then
    mv $HOME/.bashrc $HOME/.bashrc.bak
fi
ln -sf "$(readlink -e "$(pwd)/.bashrc")" "$HOME/.bashrc"

# Create symlink for gitconfig
if [ -f $HOME/.gitconfig ];
then
    mv $HOME/.gitconfig $HOME/.gitconfig.bak
fi
ln -sf "$(readlink -e "$(pwd)/.gitconfig")" "$HOME/.gitconfig"

