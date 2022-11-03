#use extended color palette if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    if [ $UID -eq 0 ]; then NCOLOR="%F{13}"; else NCOLOR="%F{93}"; fi
    ORANGE="%F{202}"
    GREY="%F{240}"
else
    if [ $UID -eq 0 ]; then NCOLOR="$fg[red]"; else NCOLOR="$fg[magenta]"; fi
    ORANGE="$fg[yellow]"
    GREY="$fg[light-gray]"
fi



PROMPT='%{$NCOLOR%}%n%{$reset_color%}@%{$ORANGE%}%m%{$reset_color%}:%{$ORANGE%}%~%{$reset_color%}:%{$GREY%}%%%{$reset_color%} '
RPROMPT='$(git_prompt_info)'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{172}%}<%{%F{85}%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{%F{172}%}>%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{154}%}✗"
