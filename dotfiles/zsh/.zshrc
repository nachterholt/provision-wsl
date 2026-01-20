export ZSH="$HOME/.oh-my-zsh"

# Oh My Zsh minimal halten
ZSH_THEME=""   # wichtig: kein Theme setzen
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# Starship initialisieren
eval "$(starship init zsh)"

# Eigene Konfiguration
source ~/provision-wsl/dotfiles/zsh/aliases.zsh
source ~/provision-wsl/dotfiles/zsh/plugins.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

#Language setzen, damit Icons korrekt angezeigt werden
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

