{
	config,
	pkgs,
	lib,
	...
}:
{
	boot = {
		kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore;
	};
}
