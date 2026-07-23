{ config, lib, pkgs, ... }: {
	environment = {
		variables = {
			SHELL = "fish";
			EDITOR = "nvim";
			VISUAL = "nvim";
			BROWSER = "zen";
			NIXOS_OZONE_WL = "1";
			QT_QPA_PLATFORMTHEME = "qt6ct";
			QS_ICON_THEME = "Papirus-Dark";
			GTK_ICON_THEME = "Papirus-Dark";
		};
	};
}
