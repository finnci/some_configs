#!/usr/bin/env bash
set -e

# Become super user before starting work
sudo -v


printf "\nSetting up with some useful bits ...\n\n"

# lets get brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
# install from brews.txt
comm -23 <(sort brews.txt) <(brew leaves) | xargs brew install
brew cleanup





