{
	config,
	pkgs,
	lib,
	...
}:
{
	hardware = {
		bluetooth = {
			enable = true;
			powerOnBoot = true;
			settings = {
				General = {
					Experimental = true;
				};
			};
		};
	};
}
