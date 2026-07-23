{ config, lib, pkgs, ... }: {
	imports = [
		./sudo.nix
		./doas.nix
	];
}
