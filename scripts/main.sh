#!/bin/bash

# Abs path to dotfiles
DOTFILES_DIR="$HOME/Code/projects/setup/dotfiles"

# Abs path to custom dotfiles configs
SCRIPTS_DIR="$HOME/Code/projects/setup/scripts"

CHIPSET="$(uname -m)" # Linux

# Required
source $SCRIPTS_DIR/modules/helpers.sh
source $SCRIPTS_DIR/modules/setup.sh

# Modules
source $SCRIPTS_DIR/modules/brew.sh
source $SCRIPTS_DIR/modules/node.sh
source $SCRIPTS_DIR/modules/dotfiles.sh
source $SCRIPTS_DIR/modules/fonts.sh

finish_date=$(date +"%Y-%m-%d")
finish_time_am_pm=$(date +"%I:%M %p")

end_credits "@miclgael popOS setup is complete. ✨ \nStarted: ${the_time_am_pm}. Finished: ${finish_time_am_pm}."
warning "Please log any issues found at https://github.com/miclgael/setup-linux/issues"
