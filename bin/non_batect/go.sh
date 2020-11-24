#!/bin/sh

# batect dependencies
echo "Installing homebrew if it's not installed..."
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing docker if it's not installed..."
which docker || brew cask install docker

echo "Installing java if it's not installed..."
which java
if [ $? -ne 0 ]; then
  brew tap adoptopenjdk/openjdk
  brew cask install adoptopenjdk8
fi

# python dependencies, needed for configuring IDE to have proper intellisense and autocomplete
echo "Installing python3 if it's not installed..."
which python3 || brew install python3

echo "Activating virtual environment..."
python3 -m venv .venv
. .venv/bin/activate

echo "Installing python dependencies..."
pip install --upgrade pip
pip install -r requirements-dev.txt