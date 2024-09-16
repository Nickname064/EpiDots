#!/bin/bash

#============Install packages=================================
#=============================================================

pkgs=(
  libnotify dunst kitty
  polybar bat rofi neovim neovide gh
  nerdfonts
)

for pkg in "${pkgs[@]}"; do
  if nix profile install "nixpkgs#${pkg}";
  then
    notify-send "${pkg} installed successfully !"
  else
    notify-send "${pkg} failed to install"
  fi
done

notify-send "Installation complete !"

#=============Move files=======================================
#==============================================================


#=============Run jobs=========================================
#==============================================================

nohup polybar &

