#!/bin/bash

#Script que coloca cada um dos arquivos em seus 
#devidos lugares no ambiente do usuário

#vimrc"
FILENAME=~/.vimrc
if [[ -f "$FILENAME" ]]; then
    echo "$FILENAME exists. Backing it up to $FILENAME.bkp"
    mv $FILENAME "$FILENAME.bkp"
fi
cp vim/vimrc $FILENAME

#zsh"
FILENAME=~/.zshrc
if [[ -f "$FILENAME" ]]; then
    echo "$FILENAME exists. Backing it up to $FILENAME.bkp"
    mv $FILENAME "$FILENAME.bkp"
fi
cp zsh/zshrc $FILENAME

#Alacritty terminal"
mkdir -p ~/.config/alacritty
FILENAME=~/.config/alacritty/alacritty.yml
if [[ -f "$FILENAME" ]]; then
    echo "$FILENAME exists. Backing it up to $FILENAME.bkp"
    mv $FILENAME "$FILENAME.bkp"
fi
cp alacritty/alacritty.yml $FILENAME

#GIT
FILENAME=~/.gitconfig
if [[ -f "$FILENAME" ]]; then
    echo "$FILENAME exists. Backing it up to $FILENAME.bkp"
    mv $FILENAME "$FILENAME.bkp"
fi
cp git/gitconfig $FILENAME
