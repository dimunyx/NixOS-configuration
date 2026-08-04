{ config, lib, pkgs, ... }: {
	fileSystems = {
		"/" = {
			fsType = "ext4";
			device = "/dev/disk/by-uuid/b2dad51f-36da-42f2-9e35-63a5dbc7f07a";
		};
	};
}
