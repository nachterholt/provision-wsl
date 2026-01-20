#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Starte WSL Provisionierung"

for script in scripts/*.sh; do
  echo "==> Ausführen: $script"
  source "$script"
done

echo "==> Locale auf en_US.UTF-8 setzen"
sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8


echo "==> Dotfiles verlinken"
ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/starship/starship.toml" ~/.config/starship.toml
ln -sf "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig

# Lokale gitconfig nur anlegen, wenn sie fehlt
if [ ! -f ~/.gitconfig.local ]; then
  cat << 'EOF' > ~/.gitconfig.local
[user]
  name =
  email =
EOF

  echo "Hinweis: Bitte ~/.gitconfig.local mit Name & E-Mail ausfüllen."
fi

echo "==> Fertig. Bitte Terminal neu starten."
