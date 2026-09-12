{
	config,
	pkgs,
	lib,
	...
}:
{
	programs = {
		nano = {
			enable = false;
		};
	};
}
