{
	config,
	pkgs,
	lib,
	...
}:
{
	boot = {
		kernelModules = [
			"kvm-amd"
		];
		extraModulePackages = [ ];
		initrd = {
			kernelModules = [ ];
			availableKernelModules = [
				"nvme"
				"ahci"
				"sd_mod"
				"xhci_pci"
				"sdhci_pci"
				"usb_storage"
			];
		};
	};
}
