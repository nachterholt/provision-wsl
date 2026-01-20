#!/usr/bin/env bash

set -e

export NVM_DIR="$HOME/.nvm"

# -------------------------------------------------
# nvm installieren (falls nicht vorhanden)
# -------------------------------------------------
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  echo "==> Installiere nvm"
  curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# -------------------------------------------------
# nvm korrekt laden (WICHTIG)
# -------------------------------------------------
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh"
else
  echo "FEHLER: nvm.sh nicht gefunden"
  exit 1
fi

# -------------------------------------------------
# Node LTS stabil installieren
# -------------------------------------------------
NODE_LTS="lts/*"

echo "==> Installiere Node.js ($NODE_LTS)"
nvm install "$NODE_LTS"
nvm alias default "$NODE_LTS"
nvm use default

# -------------------------------------------------
# Globales npm & Angular CLI
# -------------------------------------------------
npm install -g npm
npm install -g @angular/cli

