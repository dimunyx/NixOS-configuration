{
	config,
	pkgs,
	lib,
	...
}:
{
	fileSystems = {
		"/" = {
			fsType = "ext4";
			device = "/dev/disk/by-uuid/06b5526e-2ed5-4d8d-814c-2b7fb5049ee1";
		};
	};
}
