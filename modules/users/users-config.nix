{ config, lib, pkgs, ... }: {
	users = {
		defaultUserShell = with pkgs; [
			zsh
		];
	};
}
