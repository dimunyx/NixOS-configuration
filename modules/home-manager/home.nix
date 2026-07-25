{ pkgs, lib, inputs, ... }: {
	imports = [
		./programs/list.nix
	];
	programs = {
		home-manager = {
			enable = true;
		};
	};
	home = {
		username = "dimunyx";
		stateVersion = "26.05";
		homeDirectory = "/home/dimunyx";
	};
}
