#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

##---------------##
##--- Sources ---##
##---------------##

# Source Spaceshipt prompt. Installed with `brew install spaceship`. Load from either directory.
test -e /home/linuxbrew/.linuxbrew/opt/spaceship/spaceship.zsh && source /home/linuxbrew/.linuxbrew/opt/spaceship/spaceship.zsh

# Source zsh-autosuggestions. Installed with `brew install zsh-autosuggestions`. Load from either directory.
test -e /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh && source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source zsh-syntax-highlighting. Installed with `brew install zsh-syntax-highlighting`. Load from either directory.
test -e /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/highlighters
