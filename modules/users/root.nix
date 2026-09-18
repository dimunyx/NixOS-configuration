{
	config,
	pkgs,
	lib,
	...
}:
{
	users = {
		users = {
			root = {
				shell = pkgs.nushell;
				hashedPasswordFile = toString ./password;
			};
		};
	};
}