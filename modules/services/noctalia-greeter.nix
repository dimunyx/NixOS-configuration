{
	inputs,
	config,
	pkgs,
	lib,
	...
}:
{
	services = {
		displayManager = {
			noctalia-greeter = {
				enable = true;
				package = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;
				settings = {
					keyboard = {
						layout = "us";
					};
					appearance = {
						scheme = "Synced";
						password_style = "random";
					};
					cursor = {
						size = 36;
						theme = "Bibata-Modern-Catppuccin-Mocha-Blue";
						path = "${inputs."Bibata-Modern-Catppuccin-Mocha-Blue".packages.${pkgs.stdenv.hostPlatform.system}.default}/share/icons";
					};
				};
			};
		};
	};
}