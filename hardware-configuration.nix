{ config, lib, pkgs, modulesPath, ... }:

{
	imports = [
		./modules
		(
			modulesPath + "/installer/scan/not-detected.nix"
		)
    	];
}
