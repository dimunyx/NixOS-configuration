{ config, lib, pkgs, ... }: {
	users = {
		users = {
			dimunyx = {
				enable = true;
				shell = pkgs.fish;
				isNormalUser = true;
				extraGroups = [
					"wheel"
					"networkmanager"
				];
				hashedPasswordFile = toString ./dimunyx-password;
			};
		};
	};
}
