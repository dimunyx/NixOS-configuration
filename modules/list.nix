{ config, lib, pkgs, nix-cachyos-kernel, inputs, ... }: {
	imports = [
		./xdg/list.nix
		./nix/list.nix
		./i18n/list.nix
		./time/list.nix
		./boot/list.nix
		./users/list.nix
		./system/list.nix
		./nixpkgs/list.nix
		./console/list.nix
		./security/list.nix
		./services/list.nix
		./programs/list.nix
		./hardware/list.nix
		./networking/list.nix
		./environment/list.nix
	];
}
