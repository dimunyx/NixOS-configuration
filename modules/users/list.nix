{ config, lib, pkgs, ... }: {
	imports = [
		./root/main.nix
		./dimunyx/main.nix
	];
}
