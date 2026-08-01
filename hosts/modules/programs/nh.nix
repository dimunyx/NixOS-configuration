{ config, lib, pkgs, ... }: {
	programs = {
		nh = {
			enable = true;
			flake = "/etc/nixos";
			clean = {
				enable = true;
				dates = "weekly";
				extraArgs = "--keep 1 --optimise";
			};
		};
	};
}
