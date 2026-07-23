{ config, lib, pkgs, ... }: {
	users = {
		users = {
			root = {
				enable = true;
				shell = pkgs.fish;
				hashedPasswordFile = toString ./root-password;
			};
		};
	};
}
