{ pkgs, ... }: {
	xdg = {
		portal = {
			enable = true;
			xdgOpenUsePortal = true;
			extraPortals = with pkgs; [
				xdg-desktop-portal-gnome
				xdg-desktop-portal-gtk
			];
			config = {
				common = {
					default = "gtk";
					"org.freedesktop.impl.portal.ScreenCast" = "gnome";
					"org.freedesktop.impl.portal.Screenshot" = "gnome";
				};
			};
		};
	};
}
