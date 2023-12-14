#!/bin/bash

# Get base-dir of this shell script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install brew
which brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

# Update system
brew update
brew upgrade

# Install packages
PACKAGES=()
CASK=()
source "$DIR/base.sh"
source "$DIR/dev.sh"
source "$DIR/desktop.sh"
source "$DIR/makerstuff.sh"

brew install ${PACKAGES[@]}
brew install --cask ${CASK[@]}

# install cocoapods for ios development with flutter
echo "Installing Cocoapods"
sudo gem install cocoapods
sudo gem uninstall ffi && sudo gem install ffi -- --enable-libffi-alloc
