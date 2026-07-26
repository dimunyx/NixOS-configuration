{ config, lib, pkgs, ... }: {
	users = {
		users = {
			dimunyx = {
				enable = true;
				shell = pkgs.zsh;
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
