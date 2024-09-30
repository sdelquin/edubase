#!/usr/bin/env bash

# https://pypas.es/#instalaci%C3%B3n
pypas upgrade

# https://github.com/casey/just?tab=readme-ov-file#pre-built-binaries
rm -f $HOME/.local/bin/just
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to ~/.local/bin
