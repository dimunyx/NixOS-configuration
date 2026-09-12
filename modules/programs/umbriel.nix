{
	inputs,
	config,
	pkgs,
	lib,
	...
}:
{
	programs = {
		umbriel = {
			enable = true;
			package = inputs.umbriel.packages.${pkgs.stdenv.hostPlatform.system}.default;
			portalPackage = inputs.xdg-desktop-portal-umbriel.packages.${pkgs.stdenv.hostPlatform.system}.default;
		};
	};
}
