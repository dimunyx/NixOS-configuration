{ config, lib, pkgs, ... }: {
	fileSystems = {
		"/boot" = {
			fsType = "vfat";
			options = [
				"fmask=0022"
				"dmask=0022"
			];
			device = "/dev/disk/by-uuid/3A53-9949";
		};
	};
}
