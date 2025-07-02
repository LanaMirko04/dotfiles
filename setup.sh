#!/bin/bash

set -e

install_packages() {
    echo "Installing packages..."
    packages=(
        git
        neovim
        fish
        btop
        waybar
        mako
        mpd
        rmpc
        mpv
        rust
        zathura
        zathura-pdf-mupdf 
        telegram-desktop
        thunderbird
        dolphin
        tectonic
        wl-clipboard
        ripgrep
        rofi-wayland
        rofi-calc
        hyprland
        hyprutils
        hypridle
        hyprlock
        hyprpaper
        hyprshot
        xdg-desktop-portal-hyprland
    )

    sudo pacman -S --noconfirm "${packages[@]}"

    aur_packages=(
        zen-browser-bin
    )

    for pkg in "${aur_packages[@]}"; do
        paru -S --noconfirm "$pkg"
    done
}

# Function to set up dotfiles
setup_dotfiles() {
    echo "Setting up dotfiles..."
    
    DOTFILES_DIR=~/.dotfiles

    if [ ! -d  "$DOTFILES_DIR" ]; then
        git clone --recursive https://github.com/LanaMirko04/dotfiles.git "$DOTFILES_DIR" && cd "$DOTFILES_DIR"
    else
        cd "$DOTFILES_DIR" && git pull
    fi

    echo "Creating symlinks..."

    # Configurations
    CONFIG_DIRS=("$DOTFILES_DIR/config/"*/)
    for dir_path in "${CONFIG_DIRS[@]}"; do
        dir_name=$(basename "$dir_path")
        
        if [ ! -e ~/.config/"$dir_name" ]; then
            ln -sf "$dir_path" ~/.config/"$dir_name"
            echo "Created symlink for $dir_name"
        else
            echo "Symlink for $config_name already exists. Skipping creation."
        fi
    done   

    # Themes, cursors, wallpapers, etc...
    ln -sf "$DOTFILES_DIR/wallpapers" ~/Pictures/Wallpapers

    echo "Dotfiles setup complete!"
}

echo "Installing dotfiles..."
# install_packages
setup_dotfiles

echo "Dotfiles installation complete!"
