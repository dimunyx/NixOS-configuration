{ config, lib, pkgs, ... }: {
	boot = {
		kernelModules = [
			"kvm-amd"
		];
	};
}
