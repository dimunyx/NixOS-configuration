{ config, lib, pkgs, nix-cachyos-kernel, inputs, ... }: {
	imports = [
		./modules/list.nix
		./hardware-configuration.nix
	];
}
