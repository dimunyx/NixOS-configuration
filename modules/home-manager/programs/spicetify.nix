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
					text = "C6D0F5";
					subtext = "A5ADCE";
					main = "000000";
					main-elevated = "000000";
					main-transition = "020413";
					highlight = "080C1D";
					highlight-elevated = "20253D";
					sidebar = "000000";
					player = "000000";
					card = "000000";
					shadow = "000000";
					selected-row = "C6D0F5";
					button = "8CAAEE";
					button-active = "8CAAEE";
					button-disabled = "8CAAEE";
					tab-active = "000000";
					notification = "CA9EE6";
					notification-error = "E78284";
					misc = "000000";
					play-button = "BABBF1";
					play-button-active = "BABBF1";
					progress-fg = "8CAAEE";
					progress-bg = "000000";
					heart = "E78284";
					pagelink-active = "E9D6F5";
					radio-btn-active = "E9D6F5";
			};
		};
	};
}
