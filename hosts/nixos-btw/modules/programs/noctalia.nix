{ pkgs, inputs, ... }: {
	programs = {
		noctalia = {
			enable = true;
			systemd = {
				enable = true;
			};
			package = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
		};
	};
}
