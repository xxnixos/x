{ config, pkgs, ... }:

#librewolf -P personal; librewolf -P work

{
  programs.librewolf = {
    enable = true;
      
    profiles.personal = {
      id = 0;
      name = "personal";
    };

    profiles.work = {
      id = 1;
      name = "work";
    };
  };
}
