#!/bin/bash
#
#   Copyright (c) 2017, Christian Muehlhaeuser <muesli@gmail.com>
#   Copyright (c) 2020-2020, Matthias Hartmann <mahartma@mahartma.com>
#
#     For license see LICENSE
#

function linkTo {
    DSTDIR=$(dirname "$2")
    mkdir -p "$DSTDIR"

    if [ -f "$2" ]
    then
        mv "$2" "$2.before.dotfiles"
    fi
    ln -nsf "`pwd`/$1" "$2"
}
