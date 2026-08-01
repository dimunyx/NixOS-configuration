{ config, lib, pkgs, nix-cachyos-kernel, ... }: {
	boot = {
		kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore-lto;
	};
}
