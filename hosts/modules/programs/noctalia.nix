{ config, lib, pkgs, inputs, ... }: {
	programs = {
		noctalia = {
			enable = true;
			package = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
		};
	};
}
