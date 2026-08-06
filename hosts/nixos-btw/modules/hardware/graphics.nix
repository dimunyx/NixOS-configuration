{ pkgs, ... }: {
	hardware = {
		graphics = {
			enable = true;
			extraPackages = with pkgs; [
				libgbm
			];
		};
	};
}
