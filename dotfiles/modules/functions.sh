#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

##-----------------##
##--- Functions ---##
##-----------------##

# VS Code shortcuts
codium () {
  flatpak run com.vscodium.codium $1
}

alias code=codium

# Shortcuts to cd into projects

# Vu project
vu () {
  cd $HOME/Code/work/vu/vu
}

# Chia project
chia () {
  cd $HOME/Code/projects/chia
}

# Deku project
deku () {
  cd $HOME/Code/projects/deku
}

# Personal website
mg () {
  cd $HOME/Code/projects/michaelgale.dev
}

# Whalebones website 
wb () {
  cd $HOME/Code/projects/whalebones.net
}

# Oh Silence website
oh () {
  cd $HOME/Code/projects/ohsilence.com
}

# Oh Silence website
mono () {
  cd $HOME/Code/projects/mono
}

# Jump to projects folder
projects () {
  cd $HOME/Code/projects/
  ls -la
}

# SSH into remote server by name
# sabooro () {
#   ssh -t michael@192.168.1.108 "docker attach sabooro"
# }

## Other utils
snippet () {
  micro $HOME/.config/espanso/config
}
