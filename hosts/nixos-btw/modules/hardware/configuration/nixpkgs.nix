{ config, lib, pkgs, ... }: {
	nixpkgs = {
		hostPlatform = lib.mkDefault "x86_64-linux";
	};
}
