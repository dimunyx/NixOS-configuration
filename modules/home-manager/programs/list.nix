{ pkgs, lib, inputs, ... }: {
	imports = [
		./spicetify.nix
		./dimunyx-qs.nix
	];
}
