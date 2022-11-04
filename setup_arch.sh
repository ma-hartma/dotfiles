#!/bin/bash
#
#   Copyright (c) 2017-2018, Christian Muehlhaeuser <muesli@gmail.com>
#   Copyright (c) 2020-2020, Matthias Hartmann <mahartma@mahartma.com>
#
#     For license see LICENSE
#
set -e

elif [[ "$FLAVOR" == "minimal" ]]; then
    FLAVOR="_${FLAVOR}"
elif [[ "$FLAVOR" != "" ]]; then
    # Unknown
    echo "Sorry, but flavor '$FLAVOR' is unknown!"
    exit 1
fi

# Install packages
./packages/arch${FLAVOR}/packages.sh

# Setup pacman hook
mkdir -p "/etc/pacman.d/hooks"
linkTo "configs/hooks/mirrorupgrade.hook" "/etc/pacman.d/hooks/mirrorupgrade.hook"

# Install drivers
./packages/arch${FLAVOR}/drivers/bluetooth.sh
./packages/arch${FLAVOR}/drivers/smartcard.sh
./packages/arch${FLAVOR}/drivers/intel.sh

if lspci -k | grep -qA 2 -E "(NVIDIA)"; then
    echo "Found NVIDIA GPU, installing drivers..."
    ./packages/arch${FLAVOR}/drivers/nvidia.sh
else
    echo "No NVIDIA GPU found, skipping nvidia driver installation"
fi
