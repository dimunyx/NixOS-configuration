{ pkgs, inputs, ... }: {
	imports = [
		inputs.noctalia-greeter.nixosModules.default
	];
	programs = {
		noctalia-greeter = {
			enable = true;
			settings = {
				cursor = {
					theme = "Bibata-Modern-Catppuccin-Mocha-Blue";
					size = 40;
					path = "${inputs."Bibata-Modern-Catppuccin-Mocha-Blue".packages.${pkgs.stdenv.hostPlatform.system}.default}/share/icons";
				};
				appearance = {
					scheme = "Synced";
					password_style = "random";
				};
				keyboard = {
					layout = "us";
				};
			};
		};
	};
}
