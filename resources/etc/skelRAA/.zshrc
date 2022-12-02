if [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
        if [[ $EUID == 0 ]]; then
                PROMPT="%B%F{red}%~>%f%b"
                RPROMPT="%F{red}%B%U%n@%m%u%b%f"
        else
                PROMPT="%B%F{cyan}%~>%f%b"
                RPROMPT="%F{blue}%U%n@%m%u%f"
        fi
else
        if [[ $EUID == 0 ]]; then
                PROMPT="%B%F{red}%~>%f%b"
                RPROMPT="%F{red}%B%n@%m%b%f"
        else
                PROMPT="%B%F{cyan}%~>%f%b"
                RPROMPT="%F{green}%n@%m%f"
        fi
fi

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
