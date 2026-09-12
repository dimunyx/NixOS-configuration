{
    inputs,
    config,
    pkgs,
    ...
}:
{
	imports = [
		./modules
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