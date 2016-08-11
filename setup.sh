#!/bin/bash
echo "Checking for Xcode..."
if test ! $(which gcc); then
  echo "Installing xcode..."
  xcode-select --install
fi

echo "Checking for Homebrew..."
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

echo "Checking for Ansible..."
if test ! "$(which ansible)"; then
  echo "Installing ansible..."
  brew install ansible
else
  brew upgrade ansible > /dev/null 2>&1
fi

# Print Python and Ansible versions
# python --version
# ansible --version
