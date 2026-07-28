{ config, lib, pkgs, inputs, ... }: {
	imports = [
		./nh.nix
		./zsh.nix
		./git.nix
		./nano.nix
		./neovim.nix
		./starship.nix
		./xwayland.nix
		./hyprland.nix
		./gpu-screen-recorder.nix
		./nautilus-open-any-terminal.nix
	];
}
