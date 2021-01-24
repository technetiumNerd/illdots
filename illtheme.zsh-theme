if [ $UID -eq 0 ]; then NCOLOR="%F{13}"; else NCOLOR="%F{93}"; fi
PROMPT='%{$NCOLOR%}%n%{$reset_color%}:%{%F{202}%}%~%{$reset_color%}:%{%F{245}%}#%{$reset_color%} '
RPROMPT='$(git_prompt_info)'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{172}%}<%{%F{196}%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{%F{172}%}>%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{154}%}✗"
