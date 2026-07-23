{ config, lib, pkgs, ... }: {
	boot = {
		loader = {
			grub = {
				enable = true;
				device = "nodev";
				efiSupport = true;
				theme = "/boot/grub/themes/Lilac_AMOLED";
				splashImage = "/boot/grub/themes/Lilac_AMOLED/background.png";
			};
		};
	};
}
