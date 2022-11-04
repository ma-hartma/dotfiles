#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # IDEs / Code editors + keyring dependency
    "visual-studio-code-bin" "gnome-keyring" "seahorse"
    "kdevelop"
    # CMake
    "cmake" "extra-cmake-modules"
    # SCMs
    "git" "git-lfs"
    # Environment
    "direnv"
    # Go
    "go" "go-tools" "delve" "goreleaser-bin"
    # Flutter
    "flutter" "android-sdk" "android-studio" "android-emulator"
    # .NET Core
    "dotnet-runtime"
    # Web Development
    "hugo"
    # JavaScript
    "nodejs" "npm" "yarn"
    # Postgres
    "postgresql" "pgadmin4"
    # Web-dev on CLI
    "httpie"
    # Image handling
    "pngcrush"
    # Qt5 packages
    "qt5-base" "qt5-systems" "qt5-feedback" "qt5-xmlpatterns" "qt5-x11extras"
    "qt5-webview" "qt5-webchannel" "qt5-websockets" "qt5-webkit" "qt5-webengine"
    "qt5-tools" "qt5-svg" "qt5-speech" "qt5-serialport" "qt5-serialbus"
    "qt5-sensors" "qt5-script" "qt5-remoteobjects" "qt5-quickcontrols2"
    "qt5-networkauth" "qt5-multimedia" "qt5-location" "qt5-imageformats"
    "qt5-graphicaleffects" "qt5-gamepad" "qt5-doc" "qt5-declarative"
    "qt5-datavis3d" "qt5-connectivity" "qt5-charts" "qt5-canvas3d" "qt5-3d"
    "qt5-scxml"
    # CLOC (source-line counter)
    "tokei"
    # Arduino
    "arduino" "arduino-avr-core"
    # Java
    "intellij-idea-ultimate-edition" "intellij-idea-ultimate-edition-jre"
    "jdk" "jre"
    # REST tools
    "postman-bin"
    # C
    "gdb" "valgrind" "cppcheck" "flawfinder" "bochs" "qemu-full" "gcc"
)

# To be added:
#
#   "gostatus"
