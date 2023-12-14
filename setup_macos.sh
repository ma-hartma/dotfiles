#!/bin/bash
#
#   Copyright (c) 2017-2019, Christian Muehlhaeuser <muesli@gmail.com>
#   Copyright (c) 2020-2022, Matthias Hartmann <mahartma@mahartma.com>
#
#     For license see LICENSE
#
set -e

. setup_helpers.sh

echo "Running setup for macOS..."

# Setup profile
linkTo "sh/zprofile" "$HOME/.zprofile"

# setup gpg agent conf
mkdir $HOME/.gnupg
linkTo "gpg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"

echo "Installing rosetta..."
softwareupdate --install-rosetta --agree-to-license

echo "Installing packages..."
./packages/macos/packages.sh

echo "Install Powerline Fonts"
mkdir /tmp/powerline
git clone https://github.com/powerline/fonts.git /tmp/powerline  --depth=1
# install
chmod +x /tmp/powerline/install.sh
/bin/bash /tmp/powerline/install.sh
# clean-up a bit
rm -drf /tmp/powerline

# link vscode config
linkTo "configs/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

echo "Finished Installing on MacOS"
