#!/bin/bash

# Function to copy hooks to a user-specified or default directory
install_hooks_to_directory() {
  read -p "Enter the directory path to install hooks (default: /etc/git-hooks): " directory_path
  directory_path=${directory_path:-/etc/git-hooks}
  if [[ "$directory_path" == /etc* ]] && [[ $EUID -ne 0 ]]; then
      echo "Error: Writing to $directory_path requires root privileges"
      echo "Please run the script with sudo or choose a user-writable directory"
      exit 1
  fi

  echo "Installing hooks to $directory_path..."
  mkdir -p "$directory_path"
  cp -r hooks "$directory_path/"
  git config --global core.hooksPath "$directory_path/hooks"
  echo "Hooks installed to $directory_path and configured globally."
}

install_hooks_to_directory
