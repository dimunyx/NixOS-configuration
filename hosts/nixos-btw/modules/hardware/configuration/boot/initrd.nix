{ config, lib, pkgs, ... }: {
	boot = {
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
