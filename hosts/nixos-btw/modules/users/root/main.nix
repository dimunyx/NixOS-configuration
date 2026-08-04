{ config, lib, pkgs, ... }: {
	users = {
		users = {
			root = {
				enable = true;
				shell = pkgs.zsh;
				hashedPasswordFile = toString ./root-password;
			};
		};
	};
}
