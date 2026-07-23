{ pkgs, lib, inputs, ... }: {
	imports = [
		inputs.spicetify-nix.homeManagerModules.default
	];
	programs = {
		spicetify = 
			let
				spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
			in {
				enable = true;
				theme = spicePkgs.themes.dribbblish;
				colorScheme = "custom";
				customColorScheme = {
				text = "E8D8FF";
				subtext = "9A8AAF";
				main = "000000";
				sidebar = "110D1A";
				player = "000000";
				card = "110D1A";
				shadow = "000000";
				accent = "B58FFF";
				selected-row = "B58FFF";
				button = "B58FFF";
				button-active = "B58FFF";
				tab-active = "B58FFF";
				notification = "B58FFF";
				navButton = "B58FFF";
				sidebarActive = "B58FFF";
				playButton = "B58FFF";
				progressBar = "B58FFF";
				scrollbar = "B58FFF";
				slider = "B58FFF";
				inputFocus = "B58FFF";
				buttonDisabled = "6A5A7F";
				buttonHover = "C9A8FF";
				buttonActive = "9A6FFF";
				textMuted = "9A8AAF";
				textFaint = "6A5A7F";
				extratext = "E8D8FF";
				border = "2A1F3D";
				misc = "2A1F3D";
				background = "000000";
				main-elevated = "110D1A";
				header = "000000";
				headerText = "E8D8FF";
				sliderBg = "2A1F3D";
				scrollbarBg = "110D1A";
				progressBarBg = "110D1A";
				input = "000000";
				inputText = "E8D8FF";
				inputBorder = "2A1F3D";
				playButtonBg = "000000";
				playButtonHover = "C9A8FF";
				contextMenu = "110D1A";
				contextMenuText = "E8D8FF";
				contextMenuHover = "1A1528";
				contextMenuHoverText = "B58FFF";
				sidebarBg = "110D1A";
				sidebarText = "E8D8FF";
				sidebarHover = "1A1528";
				sidebarHoverText = "B58FFF";
				navButtonHover = "C9A8FF";
				searchBg = "000000";
				searchText = "E8D8FF";
				searchBorder = "2A1F3D";
				searchFocus = "B58FFF";
				notificationError = "FF6F9B";
			};
		};
	};
}
