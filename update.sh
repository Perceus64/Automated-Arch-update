#!/bin/bash

while true; do
    # Update the package lists and upgrade the system
    sudo pacman -Syu --noconfirm

    # Clean up unused packages and old versions of installed packages
    sudo pacman -Sc --noconfirm

    # Remove orphaned packages
    sudo pacman -Rns $(pacman -Qdtq) --noconfirm

    # Update the AUR packages using yay (assuming you have yay installed)
    yay -Syu --noconfirm

    # Clean up unused AUR packages
    yay -Sc --noconfirm

    # Sleep for a specific duration before the next update (e.g., 24 hours)
    sleep 24h
done
