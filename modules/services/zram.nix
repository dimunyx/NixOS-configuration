{ config, lib, pkgs, ... }: {
	services = {
		zram-generator = {
			enable = true;
			settings = {
				zram0 = {
        				zram-size = "4096";
        				swap-priority = 100;
					compression-algorithm = "zstd";
				};
			};
		};
	};
}
