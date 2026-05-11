{
  description = "NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.11";

   home-manager = { 
     url = "github:nix-community/home-manager";
     inputs.nixpkgs.follows = "nixpkgs";
     };

   noctalia = {
     url = "github:noctalia-dev/noctalia-shell";
     inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, nixpkgs-stable, home-manager, noctalia, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
	home-manager.nixosModules.home-manager
	{
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.backupFileExtension = "backup";
	  home-manager.extraSpecialArgs = { inherit inputs; };
	  home-manager.users.xx = import ./home.nix;
	}
      ];
    };
  };
}
