#!/bin/bash
# Install gruvbox the vim way?
#GRUVINSTALL=false
GRUVINSTALL=true

# Do initial paths
SCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OMZPATH=$HOME"/.oh-my-zsh"
VRCPATH=$HOME"/.vimrc"

# Tell user to have the things
echo "Make sure you have vim, zsh, and oh-my-zsh installed"
DOEXIT=false;
[ ! -d $OMZPATH ] && {echo "No OMZ installed?" && DOEXIT=true}
[ ! $(command -v zsh) ] && {echo "No ZSH installed?" && DOEXIT=true}
[ ! $(command -v vim) ] && {echo "No VIM installed?"&& DOEXIT=true}
[ $DOEXIT ] && {echo "Bye!" && exit 1}

# User needs symlinks to repo
echo "Adding symbolic links for theme and vimrc"
rm -f "${OMZPATH}/custom/themes/illtheme.zsh-theme" "${VRCPATH}"
ln -s "$SCDIR/illtheme.zsh-theme" "${OMZPATH}/custom/themes/"
ln -s "$SCDIR/alias" "${OMZPATH}/custom/plugins/"
[ -f ~/.vimrc ] && cp $VRCPATH "$HOME/.vimrc.bak" && echo ".vimrc backed up to .vimrc.bak";
ln -s "$SCDIR/vimrc" $VRCPATH

# User should have gruvbox for vim; installing with no pluginmanager
echo "gruvbox for vim installed to ~/.vim/pack/default/start"
[[ $GRUVINSTALL == true && ! -d $HOME"/.vim/pack/default/autostart/gruvbox/" ]] && mkdir -p $HOME"/.vim/pack/default/start" && git clone https://github.com/morhetz/gruvbox.git $HOME"/.vim/pack/default/start/gruvbox";

# User should use the theme
echo "Backing up .zshrc to .zshrc.bak and changing theme"
[ -f ~/.zshrc ] && cp "~/.zshrc" "~/.vimrc.bak" && echo ".zshrc backed up to .zshrc.bak";
sed -i -E 's/^ZSH_THEME=".+?"$/ZSH_THEME="illtheme"/g' $HOME"/.zshrc"
echo "unsetopt HIST_VERIFY" >> ~/.zshrc

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
