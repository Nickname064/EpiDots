#Install basic stuff
nix profile install nixpkgs#kitty
nix profile install nixpkgs#libnotify && notify-send "Libnotify Installed !"


#install non-primordial stuff
nix profile install nixpkgs#dunst && notify-send "Dunst installed !"
nix profile install nixpkgs#bat && notify-send "Bat installed !" || notify-send "Bat installed failed"
nix profile install nixpkgs#polybar
nix profile install nixpkgs#rofi
nix profile install nixpkgs#neovim
nix profile install nixpkgs#gh
nix profile install nixpkgs#lapce

#Additional, probably long installs
nix profile install nixpkgs#nerdfonts


notify-send "Installation complete !"
