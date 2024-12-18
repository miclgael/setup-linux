#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

##---------------##
##--- Aliases ---##
##---------------##

# Package manager agnostic shortcuts (requires `npm i -g @antfu/ni`)
alias dev='nr dev'

# Nuxt specific shortcuts
alias sb='nr storybook:nuxt'
alias unit='nr test'
alias olint='onchange "**/*.ts" "**/*.js" "**/*.vue" --exclude-path .gitignore  -- eslint "$(echo {{file}})" --fix && yarn stylelint "$(echo {{file}})" --fix'
alias dev_all='nr dev:all'

# MG specific shortcuts
alias watch='nr watch'
alias deploy='nr deploy'

# Use fastfetch instead of neofetch, if available
alias neofetch='echo "using fastfetch" && fastfetch'

# Recursively list all node_modules folders from the current directory
alias ls_node_modules="find . -name 'node_modules' -type d -prune"

# Recursively remove all node_modules folders from the current directory
alias rm_node_modules="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"

# Displays shortcut
alias display="bash $HOME/Code/projects/setup-linux/scripts/modules/displays.sh"

# Update all the stuff
alias update_all="sudo sh -c 'apt update; apt upgrade -y; apt-get update; apt-get upgrade -y; flatpak upgrade -y;' && brew update; brew upgrade; omz update;"

# Modifying setup configs
alias setup="cd $HOME/Code/projects/setup-linux && code ."
