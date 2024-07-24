#!/bin/bash

# This thing turbo installs packages listed in packages.txt and stored locally packages_local.txt

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Tidy function
log () {
  echo -e "$1"
  echo -e "------"
}

# check if a command already exists before trying to install
check_command () {
  # Check for multiple args
  if [ "$#" -gt 1 ]; then
    PK="./packages/$1*"
  else
    PK=$1
  fi

  # Check if app command already working 
  if ! command -v $1 > /dev/null; then
    # Prompt to install
    read -p "$1 not found! Install? (y/n): " response

    # If answer was yes, attemmpt install.
    case $response in
      [Yy]* ) sudo apt install $PK -y
    esac
  else
    log "$1 found!"
  fi
}

# recursively split on ";" and "," chars, to separate
# the command name from the package names (e.g. psql;postgresql,postgresql-contrib
splitr () {
  local cols=$(echo $1 | tr "$2" "\n")
  local counter=0

  for col in $cols
  do
    if [[ $counter == 0 ]]; then
      # if the counter is 0; we're looking at a command name.
      check_command $col
    fi

    if [[ $counter == 1 ]]; then
      # function calls itself again here to split 
      # on comma separated package names
      splitr $col ","
    fi

    let counter++
  done
}

# Check each app stored locally (apt)
while read -u 3 line; do
  check_command $line l
done 3< packages/apt.txt

# Check each app apt (apt)
while read -u 3 line; do
  splitr $line ";"
done 3< packages/apt.txt

# Check and install flatpaks
while read -u 3 line; do
  flatpak install flathub $line -y
done 3< packages/flatpak.txt

# Check and install snaps
while read -u 3 line; do
  snap install $line -y
done 3< packages/snap.txt

# Check and install brew
while read -u 3 line; do
  brew install $line -y
done 3< packages/brew.txt
