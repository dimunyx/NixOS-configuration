{ config, lib, pkgs, ... }: {
	imports = [
		./root/main.nix
		./users-config.nix
		./dimunyx/main.nix
	];
}
