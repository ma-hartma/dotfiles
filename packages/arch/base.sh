#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Basic utils
    "coreutils" "dnsutils" "dosfstools"
    # Package utils
    "pacutils"
    # System hooks
    "kernel-modules-hook"
    # Disk drive utils
    "hdparm" "smartmontools"
    # Monitors
    "htop" "iotop" "lsof" "ncdu"
    # Editors
    "joe" "micro-bin"
    # CLI tools
    "ripgrep" "time" "tmux" "which" "imagemagick"
    # Decompression
    "unrar" "unzip"
    # Shell
    "zsh"
    # Docker
    "docker" "docker-compose"
    # Markdown utils
    "glow"
    # Systemd pacman hook
    "systemd-boot-pacman-hook"
    # Nvidia Drivers
    "nvidia"
    # SDDM
    "sddm"
)
