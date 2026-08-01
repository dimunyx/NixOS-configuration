{ config, lib, pkgs, ... }: {
	security = {
		sudo = {
			enable = false;
		};
	};
}
