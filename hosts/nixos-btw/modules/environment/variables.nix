{ config, ... }: {
	environment = {
		variables = {
			SHELL = "zsh";
			EDITOR = "nvim";
			VISUAL = "nvim";
			BROWSER = "zen";
			NIXOS_OZONE_WL = "1";
			CURSOR_THEME = "Bibata-Modern-Catppuccin-Mocha-Blue";
			CURSOR_PATH = [
				"$HOME/icons"
				"$HOME/.local/share/icons"
				"${config.system.path}/share/icons"
			];
			CURSOR_SIZE = "40";
			XCURSOR_THEME = "Bibata-Modern-Catppuccin-Mocha-Blue";
			XCURSOR_SIZE = "40";
			XCURSOR_PATH = [
				"$HOME/icons"
				"$HOME/.local/share/icons"
				"${config.system.path}/share/icons"
			];
			QT_QPA_PLATFORMTHEME = "qt6ct";
			QS_ICON_THEME = "Papirus-Dark";
			GTK_ICON_THEME = "Papirus-Dark";
			ELECTRON_OZONE_PLATFORM_HINT = "wayland";
		};
	};
}
