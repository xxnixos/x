{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = "xxnixos";
      user.email = "marcioxavier2604@gmail.com";
    };
  };
}
