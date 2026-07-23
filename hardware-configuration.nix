{ config, lib, pkgs, modulesPath, ... }:

{
	imports = [
		./modules/list.nix
		(
			modulesPath + "/installer/scan/not-detected.nix"
		)
    	];
}
