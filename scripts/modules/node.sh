#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

heading 'Running node.sh'
info 'This script will install NVM and any node.js global packages.'

LATEST_NVM=$({
  curl -s https://api.github.com/repos/nvm-sh/nvm/releases | \
    jq -r 'first(.[].tag_name | select(test("^v[0-9]")))'
})

# Change this variable if you have a preference
DEFAULT_NODE_VERSION=18.18.2

# No need to compare versions, NVM will install or update from the same script.
info 'Installing/updating nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM/install.sh | bash

# check for node
if ! command -v node &> /dev/null; then
  . ~/.nvm/nvm.sh
  info 'Installing node'
  nvm install $DEFAULT_NODE_VERSION
  nvm alias default $DEFAULT_NODE_VERSION
else
  warning 'node already installed'
fi

# Check for each of utility and install if not already there
for NPM_APP in "pnpm" "yarn" "eslint" "@antfu/ni" "netlify-cli"; do
  if ! command -v $NPM_APP &> /dev/null; then
    info "Installing $NPM_APP - globally"
    npm install -g $NPM_APP
  else
    warning "$NPM_APP already installed"
  fi
done
