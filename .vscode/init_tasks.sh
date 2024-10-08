#!/bin/bash

# Gives a personalised greeting
# Adds configuration options for SQLite
# Creates run aliases
# Author: Matt Rudge

echo "Setting the greeting"
sed -i "s/USER_NAME/$GITPOD_GIT_USER_NAME/g" ${GITPOD_REPO_ROOT}/README.md

echo "Creating .sqliterc file"
echo ".headers on" > ~/.sqliterc
echo ".mode column" >> ~/.sqliterc

# Set up the virtual environment
echo "Setting up the virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

python3 -m pip install -U --no-user pip

# Install requirements, explicitly targeting the virtual environment
pip install --no-user -r requirements.txt 

echo "Your workspace is ready to use. Happy coding!"
