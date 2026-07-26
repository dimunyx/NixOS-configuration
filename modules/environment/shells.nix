{ config, lib, pkgs, ... }: {
	environment = {
		shells = with pkgs; [
			zsh
		];
	};
}
