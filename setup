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

echo "Checking for pip..."
if test ! "$(which pip)"; then
  echo "Installing pip..."
  sudo easy_install pip
fi

echo "Checking for Ansible..."
if test ! "$(which ansible)"; then
  echo "Installing ansible..."
  sudo pip install ansible --quiet
else
  sudo pip install ansible --upgrade > /dev/null 2>&1
fi

# Print Python and Ansible versions
python --version
ansible --version

# Exit immediately if a command exits with a non-zero status
set -e

echo "Running Ansible playbook..."
ansible-playbook main.yml

echo "Running dotfiles bootstrap script..."
test -d ~/.dotfiles && cd ~/.dotfiles && ./scripts/bootstrap.sh
