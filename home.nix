{ config, pkgs, inputs, ... }:

{
  home.username = "xx";
  home.homeDirectory = "/home/xx";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    discord
    telegram-desktop
    btop
    libreoffice
    gimp
    fastfetch
    librewolf
    lf
    claude-code
    vscode
    eog
  ];
}
