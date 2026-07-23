{ config, lib, pkgs, nix-cachyos-kernel, ... }: {
	imports = [
		./efi.nix
		./grub.nix
		./kernel.nix
	];
}
