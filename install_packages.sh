#!/bin/bash

packagelist='packages.txt'

if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS using Homebrew
  brew install $(grep -vE "^\s*#" "$packagelist" | tr "\n" " " | tr "\r\n" " ")
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux using default package manager
  sudo "$(command -v package-manager)" install $(grep -vE "^\s*#" "$packagelist" | tr "\n" " " | tr "\r\n" " ")
else
  # Error: OS unsupported.
  echo "Unsupported operating system: $OSTYPE. Change the file \"install_packages.sh\" to support your operating system as well."
  exit 1
fi