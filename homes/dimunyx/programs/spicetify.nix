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
					text = "CDD6F4";
					subtext = "A6ADC8";
					main = "1E1E2E";
					main-elevated = "1E1E2E";
					main-transition = "212232";
					highlight = "272839";
					highlight-elevated = "42435C";
					sidebar = "1E1E2E";
					player = "1E1E2E";
					card = "1E1E2E";
					shadow = "1E1E2E";
					selected-row = "CDD6F4";
					button = "89B4FA";
					button-active = "89B4FA";
					button-disabled = "89B4FA";
					tab-active = "1E1E2E";
					notification = "CBA6F7";
					notification-error = "F38BA8";
					misc = "1E1E2E";
					play-button = "B4BEFE";
					play-button-active = "B4BEFE";
					progress-fg = "89B4FA";
					progress-bg = "1E1E2E";
					heart = "F38BA8";
					pagelink-active = "E4D0FB";
					radio-btn-active = "E4D0FB";
			};
		};
	};
}
