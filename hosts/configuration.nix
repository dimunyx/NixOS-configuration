{ config, lib, pkgs, nix-cachyos-kernel, inputs, ... }: {
	imports = [
		./modules
		./hardware-configuration.nix
	];
}
