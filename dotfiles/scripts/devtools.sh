sudo apt install -y \
  fzf ripgrep bat delta fd-find \
  direnv tmux eza jq httpie

mkdir -p ~/.local/bin
ln -sf /usr/bin/batcat ~/.local/bin/bat
ln -sf /usr/bin/fdfind ~/.local/bin/fd

if ! command -v zoxide >/dev/null; then
  curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
fi
