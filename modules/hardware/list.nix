{ config, lib, pkgs, ... }: {
	imports = [
		./graphics.nix
		./bluetooth.nix
		./configuration/list.nix
	];
}
