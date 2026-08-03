{ config, lib, pkgs, inputs, ... }: {
	environment = {
		systemPackages = with pkgs; [
			jq
			fzf
			lz4
			mpv
			zip
			nil
			tree
			btop
			gimp
			wget
			cava
			unzip
			pipes
			wtype
			kitty
			krita
			loupe
			harper
			ddcutil
			whatsie
			spotify
			udiskie
			blender
			blueman
			mdwatch
			pyright
			cpufetch
			usbutils
			nautilus
			nwg-look
			inkscape
			adw-gtk3
			cliphist
			obsidian
			pciutils
			gammastep
			python315
			fastfetch
			unimatrix
			libnotify
			playerctl
			hyprpicker
			alsa-utils
			lm_sensors
			pixelorama
			theclicker
			quickshell
			pavucontrol
			gnome-boxes
			clang-tools
			wl-clipboard
			gnome-clocks
			qt5.qtwayland
			qt6.qtwayland
			brightnessctl
			xdg-user-dirs
			bibata-cursors
			gnome-calculator
			libsForQt5.qt5ct
			mpvScripts.mpris
			telegram-desktop
			qt6.qtdeclarative
			kdePackages.qt6ct
			kdePackages.kamoso
			gnome-disk-utility
			xwayland-satellite
			papirus-icon-theme
			kdePackages.kdenlive
			bash-language-server
			onlyoffice-desktopeditors
			(
				discord.override {
      					withVencord = true;
    				}
			)
			inputs.opencode.packages.${pkgs.stdenv.hostPlatform.system}.opencode
      			inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
			(
				pkgs.buildGoModule {
					pname = "iris";
					doCheck = false;
					src = inputs.iris;
					subPackages = [
						"cmd/iris"
					];
					proxyVendor = true;
					version = inputs.iris.shortRev or inputs.iris.lastModifiedDate;
					vendorHash = "sha256-KQNloP/Aj283YQ4d5LFu/2Pbb2HbVTZPhLK1fs4xvGw=";
				}
			)
		];
	};
}
