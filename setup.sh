#!/bin/bash
#
#   Copyright (c) 2017-2019, Christian Muehlhaeuser <muesli@gmail.com>
#   Copyright (c) 2020-2020, Matthias Hartmann <mahartma@mahartma.com>
#
#     For license see LICENSE
#
set -e
pwd="$(pwd)"

. setup_helpers.sh

# source .profile so we got correct env-vars for setup
source "sh/profile"

# create required dirs
mkdir -p "$GOPATH"

if [[ "$OSTYPE" == "linux"* ]]; then
        # Linux
        OSID="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        OSID="macos"
else
        # Unknown
        echo "Sorry, but setup for '$OSTYPE' is not supported (yet)!"
        exit 1
fi

./setup_$OSID.sh

cd "$HOME/Sources"
# Install oh-my-zsh
#if [ ! -d "oh-my-zsh" ]
#then
#    git clone https://github.com/ohmyzsh/ohmyzsh
#fi
cd "$pwd"

# Setup profile
linkTo "sh/profile" "$HOME/.profile"

# Setup zsh
linkTo "sh/zshrc" "$HOME/.zshrc"


# Setup git
mkdir -p "$HOME/.config/git"
linkTo "configs/git/config" "$HOME/.config/git/config"
linkTo "configs/git/ignore" "$HOME/.config/git/ignore"

# Setup pacman hook
linkTo "configs/hooks/mirrorupgrade.hook" "/etc/pacman.d/hooks/mirrorupgrade.hook"


cd "$pwd"
