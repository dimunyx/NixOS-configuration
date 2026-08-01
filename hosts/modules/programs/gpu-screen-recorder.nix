{ config, lib, pkgs, ... }: {
	programs = {
		gpu-screen-recorder = {
			enable = true;
		};
	};
}
