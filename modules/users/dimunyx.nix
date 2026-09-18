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
				shell = pkgs.nushell;
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