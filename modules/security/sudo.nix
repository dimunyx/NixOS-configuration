{
	config,
	pkgs,
	lib,
	...
}:
{
	security = {
		sudo = {
			enable = false;
		};
	};
}
