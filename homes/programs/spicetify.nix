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
				enabledExtensions = with spicePkgs.extensions; [
      					adblockify
    				];
				colorScheme = "custom";
				customColorScheme = {
					text = "C0CAF5";
					subtext = "9AA5CE";
					main = "1A1B26";
					main-elevated = "1A1B26";
					main-transition = "1C1D2A";
					highlight = "1F2130";
					highlight-elevated = "333954";
					sidebar = "1A1B26";
					player = "1A1B26";
					card = "1A1B26";
					shadow = "1A1B26";
					selected-row = "C0CAF5";
					button = "7AA2F7";
					button-active = "7AA2F7";
					button-disabled = "7AA2F7";
					tab-active = "1A1B26";
					notification = "9ECE6A";
					notification-error = "F7768E";
					misc = "1A1B26";
					play-button = "BB9AF7";
					play-button-active = "BB9AF7";
					progress-fg = "7AA2F7";
					progress-bg = "1A1B26";
					heart = "F7768E";
					pagelink-active = "E6F2D9";
					radio-btn-active = "E6F2D9";
			};
		};
	};
}
