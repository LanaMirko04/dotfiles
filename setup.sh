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
        pcmanfm
        tectonic
        hyprland
        hyprutils
        hypridle
        hyprlock
        hyprpaper
        hyprpicker
        xdg-desktop-portal-hyprland
    )

    sudo pacman -S --noconfirm "${packages[@]}"

    aur_packages=(
        #paru
        wayshot
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
    ln -sf "$DOTFILES_DIR/config/fish" ~/.config/fish
    ln -sf "$DOTFILES_DIR/config/hypr" ~/.config/hypr
    ln -sf "$DOTFILES_DIR/config/kitty" ~/.config/kitty
    ln -sf "$DOTFILES_DIR/config/mako" ~/.config/mako
    ln -sf "$DOTFILES_DIR/config/mpd" ~/.config/mpd
    ln -sf "$DOTFILES_DIR/config/nvim" ~/.config/nvim
    ln -sf "$DOTFILES_DIR/config/waybar" ~/.config/waybar

    # Themes, cursors, wallpapers, etc...
    ln -sf "$DOTFILES_DIR/wallpapers" ~/Pictures/Wallpapers

    echo "Dotfiles setup complete!"
}

echo "Starting setup..."
install_packages
setup_dotfiles

echo "Setup complete!"
