{
	config,
	pkgs,
	lib,
	...
}:
{
	fileSystems = {
		"/boot" = {
			fsType = "vfat";
			options = [
				"fmask=0022"
				"dmask=0022"
			];
			device = "/dev/disk/by-uuid/DDC8-53B3";
		};
	};
}
