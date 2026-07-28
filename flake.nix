{
  	inputs = {
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
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		hyprland = {
			url = "github:hyprwm/Hyprland/v0.56.1";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
		hyprcapture = {
			url = "github:gfhdhytghd/HyprCapture";
			inputs = {
				hyprland = {
					follows = "hyprland";
				};
			};
		};
    		nixpkgs = {
			url = "github:NixOS/nixpkgs/nixos-unstable";
		};
		nix-cachyos-kernel = {
			url = "github:xddxdd/nix-cachyos-kernel/release";
		};
		dimunyx-qs = {
			url = "github:dimunyx-shell/dimunyx-qs";
		};
		hypr-dynamic-cursors = {
			url = "github:VirtCode/hypr-dynamic-cursors";
			inputs = {
				hyprland = {
					follows = "hyprland";
				};
			};
		};
		scroll-overview = {
			url = "github:yayuuu/hyprland-scroll-overview";
			inputs = {
				hyprland = {
					follows = "hyprland";
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
					./configuration.nix
					home-manager.nixosModules.home-manager
					{
						home-manager = {
							useGlobalPkgs = true;
							useUserPackages = true;
							extraSpecialArgs = {
								inherit inputs;
							};
							users = {
								dimunyx = import ./modules/home-manager/home.nix;
							};
						};
					}
					(
						{ pkgs, ... }: {
							nixpkgs = {
								overlays = [
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
