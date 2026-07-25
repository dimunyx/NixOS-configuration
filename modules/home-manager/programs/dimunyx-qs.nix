{ pkgs, lib, inputs, ... }: {
	imports = [
		inputs.dimunyx-qs.homeManagerModules.x86_64-linux.default
	];
	programs = {
		dimunyx-qs = {
			enable = true;
			password = "1111";
			enableWallpapers = true;
			weather = {
				enable = true;
				key = "328b152484b2e4e9ca5d80f07361dd30";
			};
		};
	};
}
