#!/bin/bash

# Do initial paths
SCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OMZPATH=$HOME"/.oh-my-zsh"
VRCPATH=$HOME"/.vimrc"

# Tell user to have the things
echo "Make sure you have vim, zsh, and oh-my-zsh installed"
[ ! -d $OMZPATH ] && echo "No OMZ installed? Bye!" && exit 1;
[ ! $(command -v zsh) ] && echo "No ZSH installed? Bye!" && exit 1;
[ ! $(command -v vim) ] && echo "No VIM installed? Bye!" && exit 1;

# User needs symlinks to repo
echo "Adding symbolic links for theme and vimrc"
rm -f "${OMZPATH}/custom/themes/illtheme.zsh-theme" "${VRCPATH}"
ln -s "$SCDIR/illtheme.zsh-theme" "${OMZPATH}/custom/themes/"
ln -s "$SCDIR/alias" "${OMZPATH}/custom/plugins/"
[ -f ~/.vimrc ] && cp $VRCPATH "$HOME/.vimrc.bak" && echo ".vimrc backed up to .vimrc.bak";
ln -s "$SCDIR/vimrc" $VRCPATH


# User should use the theme
echo "Changing theme in .zshrc"
sed -i -E 's/^ZSH_THEME=".+?"$/ZSH_THEME="illtheme"/g' $HOME"/.zshrc"

# Add plugins zsh-syntax-highlighting, zsh-autosuggestions, and my aliases
echo "Adding plugins"
if [ ! -d $OMZPATH"/custom/plugins/zsh-autosuggestions/" ];
    then git clone https://github.com/zsh-users/zsh-autosuggestions.git $OMZPATH"/custom/plugins/zsh-autosuggestions"
fi
if [ ! -d $OMZPATH"/custom/plugins/zsh-syntax-highlighting/" ];
    then git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OMZPATH"/custom/plugins/zsh-syntax-highlighting"
fi
sed -i -E 's/^plugins=\(.+?\)$/plugins=(git zsh-syntax-highlighting zsh-autosuggestions alias)/g' $HOME"/.zshrc"

echo "All done!"
