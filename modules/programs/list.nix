{ config, lib, pkgs, inputs, ... }: {
	imports = [
		./nh.nix
		./zsh.nix
		./git.nix
		./nano.nix
		./niri.nix
		./neovim.nix
		./starship.nix
		./xwayland.nix
	];
}
