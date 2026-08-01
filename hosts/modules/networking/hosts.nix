{ config, lib, pkgs, ... }: {
	networking = {
		extraHosts = ''
127.0.1.1	nixos-btw.localdomain nixos-btw
		'';
	};
}
