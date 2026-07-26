{ config, lib, pkgs, inputs, ... }: {
	imports = [
		./shells.nix
		./packages.nix
		./variables.nix
	];
}
