{ config, lib, pkgs, ... }: {
	users = {
		defaultUserShell = pkgs.zsh;
	};
}
