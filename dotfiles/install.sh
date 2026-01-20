#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Starte WSL Provisionierung"

for script in scripts/*.sh; do
  echo "==> Ausführen: $script"
  source "$script"
done

echo "==> Dotfiles verlinken"
ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES_DIR/starship/starship.toml" ~/.config/starship.toml

echo "==> Fertig. Bitte Terminal neu starten."
