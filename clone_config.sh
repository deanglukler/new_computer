#!/usr/bin/env zsh

config_dir="$HOME/.config"

# Check if ~/.config directory already exists
if [ -d "$config_dir" ]; then
    echo "The ~/.config directory already exists."
    echo "Please remove or backup the existing ~/.config directory before running this script."
    exit 1
else
    # Create ~/.config directory and clone the repository into it
    mkdir -p "$config_dir" && cd "$config_dir" && git clone git@github.com:deanglukler/dot-config.git . && git submodule update --init --recursive
    echo "Repository cloned into $config_dir"
fi