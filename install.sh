#!/bin/bash

# Function to copy hooks to a user-specified or default directory
install_hooks_to_directory() {
  read -p "Enter the directory path to install hooks (default: /etc/git-hooks): " directory_path
  directory_path=${directory_path:-/etc/git-hooks}

  echo "Installing hooks to $directory_path..."
  mkdir -p "$directory_path"
  cp -r hooks "$directory_path/"
  git config --global core.hooksPath "$directory_path/hooks"
  echo "Hooks installed to $directory_path and configured globally."
}

install_hooks_to_directory
