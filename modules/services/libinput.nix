{
	config,
	pkgs,
	lib,
	...
}:
{
	services = {
		libinput = {
			enable = true;
		};
	};
}
