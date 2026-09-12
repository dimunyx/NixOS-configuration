{
	modulesPath,
	config,
	pkgs,
	lib,
	...
}:
{
	imports = [
		./modules
		(
			modulesPath + "/installer/scan/not-detected.nix"
		)
    	];
}
