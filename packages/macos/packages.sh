#!/bin/bash

# Get base-dir of this shell script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install brew
which brew >/dev/null || NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update system
brew update
brew upgrade

# Install packages
PACKAGES=()
CASK=()
source "$DIR/base.sh"
source "$DIR/dev.sh"
source "$DIR/desktop.sh"

brew install ${PACKAGES[@]}
brew install --cask ${CASK[@]}
