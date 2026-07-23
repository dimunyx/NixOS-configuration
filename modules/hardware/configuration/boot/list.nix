{ config, lib, pkgs, ... }: {
	imports = [
		./initrd.nix
		./kernelModules.nix
		./extraModulePackages.nix
	];
}
