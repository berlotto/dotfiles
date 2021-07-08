#!/bin/bash

#Script que coloca cada um dos arquivos em seus 
#devidos lugares no ambiente do usuário

#vimrc"
FILENAME=~/.vimrc
if [[ -f "$FILENAME" ]]; then
    read -p "Do you want to overwrite $FILENAME [y/N] ? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[YySs]$ ]]
    then
        cp vim/vimrc $FILENAME
    fi
fi

#zsh"
FILENAME=~/.zshrc
if [[ -f "$FILENAME" ]]; then
    read -p "Do you want to overwrite $FILENAME [y/N] ? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[YySs]$ ]]
    then
        cp zsh/zshrc $FILENAME
    fi
fi

#Alacritty terminal"
mkdir -p ~/.config/alacritty
FILENAME=~/.config/alacritty/alacritty.yml
if [[ -f "$FILENAME" ]]; then
    read -p "Do you want to overwrite $FILENAME [y/N] ? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[YySs]$ ]]
    then
        cp alacritty/alacritty.yml $FILENAME
    fi
fi

#GIT
FILENAME=~/.gitconfig
if [[ -f "$FILENAME" ]]; then
    read -p "Do you want to overwrite $FILENAME [y/N] ? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[YySs]$ ]]
    then
        cp git/gitconfig $FILENAME
    fi
fi

#TMUX
FILENAME=~/.tmux.conf
if [[ -f "$FILENAME" ]]; then
    read -p "Do you want to overwrite $FILENAME [y/N] ? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[YySs]$ ]]
    then
        cp tmux/tmux.conf $FILENAME
    fi
fi
