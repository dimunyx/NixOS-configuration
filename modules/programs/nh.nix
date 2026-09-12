{
	config,
	pkgs,
	lib,
	...
}:
{
	programs = {
		nh = {
			enable = true;
			clean = {
				enable = false;
			};
			flake = "$HOME/.config/nixos";
		};
	};
}
