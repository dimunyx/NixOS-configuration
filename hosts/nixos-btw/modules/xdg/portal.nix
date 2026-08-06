{ pkgs, ... }: {
	xdg = {
		portal = {
			enable = true;
			xdgOpenUsePortal = true;
			extraPortals = with pkgs; [
				xdg-desktop-portal-gnome
			];
			config = {
				common = {
					default = "gnome";
				};
				niri = {
					"org.freedesktop.impl.portal.ScreenCast" = "gnome";
				};
			};
		};
	};
}
