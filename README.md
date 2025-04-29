# r1shland — Hyprland OLED Dark Theme

A clean, minimal Hyprland config designed for 2.8K OLED screens (like the ThinkPad X1 Carbon Gen 12). Inspired by Windows 11's acrylic/mica blur style with true glassy transparency.

## Features

- Acrylic-style blur on all windows
- Transparent Waybar with clean icons and layout
- Dead Space USG Ishimura wallpaper (not included in zip)
- RAM & CPU stats, WiFi SSID, battery status (no %!), power controls
- Kitty terminal with transparent theme
- Fluent GTK + Bibata dark cursor

## Install

```bash
bash <(curl -sL https://raw.githubusercontent.com/KittyFarts/r1shland/main/install.sh)
```

> Requires `yay` for AUR packages

## Manual Upload Instructions

```bash
cd ~/Downloads/r1shland
git init
git branch -M main
git remote add origin https://github.com/KittyFarts/r1shland.git
git add .
git commit -m "Initial upload of Hyprland OLED Dark Theme"
git push -u origin main
```
