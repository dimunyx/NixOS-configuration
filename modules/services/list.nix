{ config, lib, pkgs, ...  }: {
	imports = [
		./gvfs.nix
		./zram.nix
		./upower.nix
		./greetd.nix
		./udisks2.nix
		./openssh.nix
		./flatpak.nix
		./libinput.nix
		./pipewire.nix
		./power-profiles-daemon.nix
	];
}
