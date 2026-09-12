{
	config,
	pkgs,
	lib,
	...
}:
{
	console = {
		earlySetup = true;
		font = "cyr-sun16";
		packages = with pkgs; [
			kbd
		];
	};
}
