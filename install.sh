#!/bin/bash

# Do initial paths
SCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OMZPATH=$HOME"/.oh-my-zsh"
VRCPATH=$HOME"/.vimrc"

# Tell user to have the things
echo "Make sure you have vim, zsh, and oh-my-zsh installed"
if [ ! -d $OMZPATH ];
then
    echo "No OMZ installed? Bye!"
    exit 1
fi

# User needs symlinks to repo
echo "Adding symbolic links for theme and vimrc"
<<<<<<< HEAD
=======

>>>>>>> fac1422 (?)
rm -f "${OMZPATH}/custom/themes/illtheme.zsh-theme" "${VRCPATH}"
ln -s $SCDIR/illtheme.zsh-theme "${OMZPATH}/custom/themes/"
ln -s $SCDIR/vimrc $VRCPATH

echo "Changing theme in .zshrc"

sed -i -E 's/^ZSH_THEME=".+?"$/ZSH_THEME="illtheme"/g' $HOME"/.zshrc"

echo "All done!"
