#!/bin/bash

# go
PACKAGES=("${PACKAGES[@]}" "go" "golangci-lint")

# js
PACKAGES=("${PACKAGES[@]}" "node" "yarn")

# java
PACKAGES=("${PACKAGES[@]}" "openjdk@17")

# flutter
CASK=("${CASK[@]}" "flutter")

# android studio
CASK=("${CASK[@]}" "android-studio")

# env
PACKAGES=("${PACKAGES[@]}" "direnv")

# docker
CASK=("${CASK[@]}" "docker")

# ide
CASK=("${CASK[@]}" "visual-studio-code" "intellij-idea-ce")

# planning
CASK=("${CASK[@]}" "miro")

# dotnet
CASK=("${CASK[@]}" "dotnet-sdk")

# cli
PACKAGES=("${PACKAGES[@]}" "fx")
