{ config, lib, pkgs, inputs, ... }: {
	environment = {
		systemPackages = with pkgs; [
			jq
			lz4
			mpv
			zip
			nil
			tree
			gimp
			btop
			wget
			cava
			unzip
			pipes
			wtype
			kitty
			krita
			loupe
			harper
			whatsie
			spotify
			udiskie
			blender
			blueman
			mdwatch
			pyright
			cpufetch
			mpvpaper
			usbutils
			nautilus
			nwg-look
			opencode
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
			(
				pkgs.buildGoModule {
					pname = "iris";
					version = inputs.iris.shortRev or inputs.iris.lastModifiedDate;
					src = inputs.iris;
					subPackages = [ "cmd/iris" ];
					proxyVendor = true;
					vendorHash = "sha256-KQNloP/Aj283YQ4d5LFu/2Pbb2HbVTZPhLK1fs4xvGw=";
					doCheck = false;
				}
			)
      			inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
		];
	};
}
