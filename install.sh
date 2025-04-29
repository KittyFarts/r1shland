#!/bin/bash
set -e

echo "Installing r1shland Hyprland Theme..."

# Install required packages (modify as needed)
sudo pacman -S --noconfirm hyprland waybar kitty swww rofi ttf-jetbrains-mono ttf-nerd-fonts ttf-font-awesome bibata-cursor-theme

# Fluent GTK theme and icons from AUR
if ! command -v yay &> /dev/null; then
  echo "Please install yay (AUR helper) manually first."
  exit 1
fi
yay -S --noconfirm fluent-gtk-theme fluent-icon-theme

# Apply cursor theme
gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Classic"

# Copy configs
echo "Copying configuration files..."
cp -r .config/* ~/.config/

# Start swww and set wallpaper
swww init & sleep 1
swww img ~/.config/hyprpaper/wallpaper.jpg --transition-type any --transition-duration 1

echo "✅ r1shland theme installation complete. Please restart Hyprland."
