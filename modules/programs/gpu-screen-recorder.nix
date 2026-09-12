{
	config,
	pkgs,
	lib,
	...
}:
{
	programs = {
		gpu-screen-recorder = {
			enable = true;
			ui = {
				enable = false;
			};
		};
	};
}
