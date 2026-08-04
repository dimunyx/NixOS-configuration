{ config, lib, pkgs, inputs, ... }: {
	imports = [
		inputs.noctalia-greeter.nixosModules.default
	];
	programs = {
		noctalia-greeter = {
			enable = true;
			settings = {
				cursor = {
					theme = "Bibata-Modern-Classic";
					size = 40;
					path = "${pkgs.bibata-cursors}/share/icons";
				};
				pallete = "Lilac AMOLED";
			};
		};
	};
}
