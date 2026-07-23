{ config, lib, pkgs, inputs, ... }: {
	imports = [
		./packages.nix
		./variables.nix
	];
}
