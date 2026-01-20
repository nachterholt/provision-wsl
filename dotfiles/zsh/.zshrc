export ZSH="$HOME/.oh-my-zsh"

# Oh My Zsh minimal halten
ZSH_THEME=""   # wichtig: kein Theme setzen
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# Starship initialisieren
eval "$(starship init zsh)"

# Eigene Konfiguration
source ~/dotfiles/zsh/aliases.zsh
source ~/dotfiles/zsh/plugins.zsh
