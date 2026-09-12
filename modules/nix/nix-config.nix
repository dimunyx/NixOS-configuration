{
	config,
	pkgs,
	lib,
	...
}:
{
	nix = {
		enable = true;
		settings = {
			experimental-features = [
				"nix-command"
				"flakes"
			];
		};
		package = pkgs.nixVersions.latest;
	};
}
