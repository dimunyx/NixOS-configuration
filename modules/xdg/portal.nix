{ config, lib, pkgs, ... }: {
	xdg = {
		portal = {
  			enable = true;
  			extraPortals = with pkgs; [
    				xdg-desktop-portal-gtk
    				xdg-desktop-portal-gnome
  			];
  			config = {
    				common = {
      					default = [
						"gnome"
					];
      					"org.freedesktop.impl.portal.ScreenCast" = [
        					"gnome"
      					];
    				};
    				niri = {
      					"org.freedesktop.impl.portal.FileChooser" = [
        					"gnome"
      					];
					"org.freedesktop.impl.portal.ScreenCast" = [
						"gnome"
					];
    				};
  			};
		};
	};
}
