{
	config,
	pkgs,
	lib,
	...
}:
{
	boot = {
		loader = {
			grub = {
				enable = true;
				device = "nodev";
				efiSupport = true;
				theme = ./themes/Catppuccin-Mocha-Blue;
				splashImage = ./themes/Catppuccin-Mocha-Blue/background.png;
			};
		};
	};
}