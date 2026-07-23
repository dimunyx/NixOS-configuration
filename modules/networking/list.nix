{ config, lib, pkgs, ... }: {
	imports = [
		./hosts.nix
		./hostname.nix
		./networkmanager.nix
	];
}
