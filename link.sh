#!/bin/bash

# Define the target directory where the dotfiles are stored
DOTFILES_DIR=~/personal/dotfiles

# Function to remove existing file/directory (symlink or not) and create a new symlink
remove_and_create_symlink() {
    local source="$1"
    local target="$2"

    # Remove existing file or symlink
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "Removing existing $target..."
        rm -rf "$target"
    fi

    # Create new symlink
    ln -s "$source" "$target"
    echo "Linked $source to $target"
}

# Neovim config
echo "Creating Neovim symlink..."
remove_and_create_symlink "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# i3 config
echo "Creating i3 config symlink..."
remove_and_create_symlink "$DOTFILES_DIR/i3/config" "$HOME/.config/i3/config"

# Ghostty config (assuming Ghostty uses a config in dotfiles)
echo "Creating Ghostty config symlink..."
remove_and_create_symlink "$DOTFILES_DIR/ghostty/config" "$HOME/.config/ghostty/config"

echo "Symbolic links have been created for Neovim, i3, and Ghostty."

