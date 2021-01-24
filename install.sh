#!/bin/bash

echo "Make sure you have vim, zsh, and oh-my-zsh installed"

OMZPATH="~/.oh-my-zsh"
VRCPATH="~/.vimrc"

rm ${OMZPATH}/custom/themes/illtheme.zsh-theme
rm ${VRCPATH}
ln -s illtheme.zsh-theme ${OMZPATH}/custom/themes/
ln -s vimrc ${VRCPATH}

sed -i -e 's/robbyrussell/illtheme/' ~/.zshrc
