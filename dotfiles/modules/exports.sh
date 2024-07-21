##---------------##
##--- Exports ---##
##---------------##

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Spaceship prompt custom settings go here
export SPACESHIP_PACKAGE_SHOW_PRIVATE=true

# brew env
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export HOMEBREW_NO_ENV_HINTS=false