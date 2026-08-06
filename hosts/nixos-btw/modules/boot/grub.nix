{ ... }: {
	boot = {
		loader = {
			grub = {
				enable = true;
				device = "nodev";
				efiSupport = true;
				theme = "/boot/grub/themes/Eldritch";
				splashImage = "/boot/grub/themes/Eldritch/background.png";
			};
		};
	};
}
