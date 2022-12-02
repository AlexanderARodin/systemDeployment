function getSymbA() {
  echo -e "\xe2\x95\x93"
}
function getSymbA() {
  echo -e "\n\xe2\x95\x93"
}

PROMPT='%(!.%B%F{red}.%F{green})$(getSymbA)%n@%m%~%(1/./.)$(getSymbB)%(!.#%f%b.>%f) '

RPROMPT='%(?.%F{green}[ok].%F{red}[E:%?])%f%(1j.%F{yellow}[%j]%f.)'

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
