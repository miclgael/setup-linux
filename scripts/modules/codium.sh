#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>
# 
# Based on work by @ustas-eth <https://github.com/VSCodium/vscodium/discussions/1487>

# Install the copilot extension for codium
code --install-extension $DOTFILES_DIR/code-extensions/Github.copilot-*.vsix

# /home/michael/.local/share/flatpak/app/com.vscodium.codium/x86_64/stable/active/files/share/codium/resources/app
cd $HOME/.local/share/flatpak/app/com.vscodium.codium/x86_64/stable/active/files/share/codium/resources/app

# Find the line with "GitHub.copilot"
sed -i 's/"GitHub.copilot"/"GitHub.copilot": ["inlineCompletions","inlineCompletionsNew","inlineCompletionsAdditions","textDocumentNotebook","interactive","terminalDataWriteEvent"],/g' product.json

info "Copilot extension installed and enabled"
info "Please sign in to GitHub to enable Copilot"

# Open codium if its not already open
code .
