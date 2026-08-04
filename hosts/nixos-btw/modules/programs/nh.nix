{ config, lib, pkgs, ... }: {
	programs = {
		nh = {
			enable = true;
			flake = "/home/dimunyx/.config/nixos";
		};
	};
}
