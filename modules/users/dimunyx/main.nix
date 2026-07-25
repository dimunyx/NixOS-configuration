{ config, lib, pkgs, ... }: {
	users = {
		users = {
			dimunyx = {
				enable = true;
				shell = pkgs.fish;
				isNormalUser = true;
				extraGroups = [
					"wheel"
					"libvirtd"
					"networkmanager"
				];
				hashedPasswordFile = toString ./dimunyx-password;
			};
		};
	};
}
