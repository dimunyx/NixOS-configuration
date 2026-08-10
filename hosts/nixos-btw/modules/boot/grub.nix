{ ... }: {
	boot = {
		loader = {
			grub = {
				enable = true;
				device = "nodev";
				efiSupport = true;
				theme = "/boot/grub/themes/Catpuccin Mocha Blue";
				splashImage = "/boot/grub/themes/Catpuccin Mocha Blue/background.png";
			};
		};
	};
}
