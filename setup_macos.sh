#!/bin/bash
#
#   Copyright (c) 2017-2019, Christian Muehlhaeuser <muesli@gmail.com>
#   Copyright (c) 2020-2022, Matthias Hartmann <mahartma@mahartma.com>
#
#     For license see LICENSE
#
set -e

echo "Running setup for macOS..."

echo "Installing rosetta..."
softwareupdate --install-rosetta --agree-to-license

echo "Installing packages..."
./packages/macos/packages.sh
