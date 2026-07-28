{ config, lib, pkgs, ... }: {
	imports = [
		./graphics.nix
		./bluetooth.nix
		./hardware-config.nix
		./configuration/list.nix
	];
}
