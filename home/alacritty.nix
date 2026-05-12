{ config, pkgs, ... }:

let
  esc = builtins.fromJSON ''"\u001B"'';
in
{
  programs.alacritty = {
    enable = true;
    settings = {
      general.import = [ "~/.config/alacritty/themes/noctalia.toml" ];
      cursor.style = {
        blinking = "On";
        shape = "Beam";
      };
      font = {
        normal  = { family = "Hack Nerd Font Mono"; style = "Regular"; };
        bold    = { family = "Hack Nerd Font Mono"; style = "Bold"; };
        italic  = { family = "Hack Nerd Font Mono"; style = "Italic"; };
      };
      window.opacity = 0.8;
      keyboard.bindings = [
        {
          key = "Return";
          mods = "Shift";
          chars = "${esc}\r";
        }
      ];
    };
  };
}
