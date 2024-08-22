#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

# Rename and copy the `.zshrc.example` file to `~/.zshrc`

info "Copying .zshrc.example to ~/.zshrc"
cp -f $DOTFILES_DIR/.zshrc.example $HOME/.zshrc
