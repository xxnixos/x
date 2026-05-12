{ config, pkgs, inputs, ... }:

{
  imports = [
    ./home/git.nix
    ./home/fastfetch.nix
    ./home/alacritty.nix
    ./home/librewolf.nix
  ];

  home.username = "xx";
  home.homeDirectory = "/home/xx";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # Browsers

    # Communication
    discord
    telegram-desktop

    # Productivity
    libreoffice
    obsidian

    # Media & graphics
    obs-studio
    gimp
    eog

    # Development - editors & AI
    vscode
    claude-code

    # Development - languages & toolchains
    python314
    nodejs
    rustc
    cargo
    gcc
    tree-sitter

    # CLI utilities
    wget
    curl
    btop
    lf  
    ];
}
