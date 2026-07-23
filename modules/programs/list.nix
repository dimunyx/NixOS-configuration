{ config, lib, pkgs, inputs, ... }: {
	imports = [
		./nh.nix
		./git.nix
		./nano.nix
		./niri.nix
		./fish.nix
		./neovim.nix
		./starship.nix
		./xwayland.nix
	];
}
