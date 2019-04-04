#!/bin/bash

read -p "Configure the Keyboard? " -n 1 -r; echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
      defaults write -g ApplePressAndHoldEnabled -bool true
      defaults write -g InitialKeyRepeat -int 10
      defaults write -g KeyRepeat -int 1

  echo "Changes will be applied after restart"

  exit 0
fi
