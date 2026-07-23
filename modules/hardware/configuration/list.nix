{ config, lib, pkgs, ... }: {
	imports = [
		./cpu.nix
		./nixpkgs.nix
		./boot/list.nix
		./filesystems/list.nix
	];
}
