PROMPT="%(!.%B%F{red}.%F{green})┌%n@%m:%~%(1/./.)
└%(!.#%f%b.>%f) "

RPROMPT='%(?.%F{green}[ok].%F{red}[E:%?])%f%(1j.%F{yellow}[%j]%f.)'

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
