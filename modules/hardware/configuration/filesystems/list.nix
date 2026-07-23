{ config, lib, pkgs, ... }: {
	imports = [
		./nvme0n1p1.nix
		./nvme0n1p2.nix
		./nvme0n1p3.nix
	];
}
