{
	config,
	pkgs,
	lib,
	...
}:
{
	hardware = {
		cpu = {
			amd = {
				updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
			};
		};
	};
}
