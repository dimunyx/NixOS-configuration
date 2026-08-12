{
  	inputs = {
		Bibata-Modern-Catppuccin-Mocha-Blue = {
			url = "github:dimunyx/Bibata-Modern-Catppuccin-Mocha-Blue";
		};
		millennium = {
      			url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
    		};
		spicetify-nix = {
			url = "github:Gerg-L/spicetify-nix";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		pyroclear = {
			url = "github:shreyanth-sureshkrishnaa/pyroclear";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		iris = {
			url = "github:versenilvis/iris/main";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		zen-browser = {
			url = "github:youwen5/zen-browser-flake";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
    	nixpkgs = {
			url = "github:NixOS/nixpkgs/nixos-unstable";
		};
		nix-cachyos-kernel = {
			url = "github:xddxdd/nix-cachyos-kernel/release";
		};
		noctalia = {
			url = "github:noctalia-dev/noctalia/cachix";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		noctalia-greeter = {
			url = "github:noctalia-dev/noctalia-greeter";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		wall-archive = {
			url = "github:vimlinuz/wall-archive";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
  	};
  	outputs = inputs@{ self, nixpkgs, nix-cachyos-kernel, home-manager, ... }: {
    	nixosConfigurations = {
			nixos-btw = nixpkgs.lib.nixosSystem {
				specialArgs = {
					inherit inputs;
				};
      				modules = [
					./hosts/nixos-btw/configuration.nix
					home-manager.nixosModules.home-manager
					{
						home-manager = {
							useGlobalPkgs = true;
							useUserPackages = true;
							extraSpecialArgs = {
								inherit inputs;
							};
							users = {
								dimunyx = import ./homes/dimunyx/home.nix;
							};
						};
					}
					(
						{ pkgs, ... }: {
							nixpkgs = {
								overlays = [
									inputs.millennium.overlays.default
									nix-cachyos-kernel.overlays.pinned
								];
							};
						}
					)
				];
			};
		};
	};
}