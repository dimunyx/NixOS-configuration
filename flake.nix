{
	inputs = {
		umbriel = {
			url = "github:noctalia-dev/umbriel";
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
		noctalia = {
			url = "github:noctalia-dev/noctalia";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		spicetify-nix = {
				url = "github:Gerg-L/spicetify-nix";
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
		nix-cachyos-kernel = {
			url = "github:xddxdd/nix-cachyos-kernel";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		ely-launcher = {
			url = "github:ElyPrismLauncher/Launcher";
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
		noctalia-greeter = {
			url = "github:noctalia-dev/noctalia-greeter";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		xdg-desktop-portal-umbriel = {
			url = "github:noctalia-dev/xdg-desktop-portal-umbriel";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		Bibata-Modern-Catppuccin-Mocha-Blue = {
			url = "github:dimunyx/Bibata-Modern-Catppuccin-Mocha-Blue";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
	};
  	outputs = inputs@{
		self,
		nixpkgs,
		...
	}: {
    	nixosConfigurations = {
			nixosik = nixpkgs.lib.nixosSystem {
				specialArgs = {
					inherit inputs;
				};
      			modules = [
					./configuration.nix
					inputs.home-manager.nixosModules.home-manager
					{
						home-manager = {
							useGlobalPkgs = true;
							useUserPackages = true;
							extraSpecialArgs = {
								inherit inputs;
							};
							users = {
								dimunyx = import ./modules/home/home.nix;
							};
						};
					}
				];
    		};
  		};
	};
}