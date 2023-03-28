HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
WHITE=15
BLUE=33
GREEN=34

bindkey -v
alias ls='ls --color=auto'
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_ignore_dups


#normal prompt start 
#PROMPT="%F{$GREEN}%B┌──[%F{$BLUE}%n@%m%F{$GREEN}]-[%F{$WHITE}%~%F{$GREEN}]
#%F{$GREEN}%B└─%F{$BLUE}\$%f%b "
#normal prompt end

PROMPT="%F{$GREEN}%B┌──[ %F{$BLUE}${(j: :)${(s::)USER}}  ${(j: :)${(s::)HOST}}%F{$GREEN} ]-[%F{$WHITE}%~%F{$GREEN}]
%F{$GREEN}%B└─%F{$BLUE}\$%f%b "


if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=gray'
fi


