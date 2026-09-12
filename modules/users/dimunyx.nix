{
	config,
	pkgs,
	lib,
	...
}:
{
	users = {
		users = {
			dimunyx = {
				shell = pkgs.fish;
				isNormalUser = true;
				extraGroups = [
					"wheel"
					"networkmanager"
				];
				hashedPasswordFile = toString ./password;

			};
		};
	};
}
