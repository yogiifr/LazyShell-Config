#!/usr/bin/env bash

# This script removes all the things installed by neovim - useful for a clean reinstall
# It should remove all traces of LSPs installed by mason, and also other things
#
rm -rf ~/.local/share/nvim/
rm -rf ~/.local/state/nvim/
rm -rf ~/.cache/nvim/
