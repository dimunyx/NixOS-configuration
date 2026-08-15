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
					"org.freedesktop.impl.portal.ScreenCast" = "gnome";
					"org.freedesktop.impl.portal.Screenshot" = "gnome";
				};
			};
		};
	};
}
