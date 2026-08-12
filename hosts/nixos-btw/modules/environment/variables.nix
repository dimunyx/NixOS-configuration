{ lib, pkgs, inputs, ... }: {
	environment = {
		variables = {
			SHELL = "zsh";
			BROWSER = "zen";
			EDITOR = lib.mkForce "code";
			VISUAL = lib.mkForce "code";
			NIXOS_OZONE_WL = "1";
			CURSOR_THEME = "Bibata-Modern-Catppuccin-Mocha-Blue";
			CURSOR_SIZE = "40";
			XCURSOR_THEME = "Bibata-Modern-Catppuccin-Mocha-Blue";
			XCURSOR_SIZE = "40";
			QT_QPA_PLATFORMTHEME = "qt6ct";
			QS_ICON_THEME = "Papirus-Dark";
			GTK_ICON_THEME = "Papirus-Dark";
			ELECTRON_OZONE_PLATFORM_HINT = "wayland";
		};
	};
}
