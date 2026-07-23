{ config, lib, pkgs, ... }: {
	security = {
		doas = {
			enable = true;
			extraRules = [
				{
					users = [ "dimunyx" ];
					keepEnv = true;
					persist = true;
				}
				{
					users = [ "dimunyx" ];
					cmd = "tee";
					noPass = true;
				}
				{
					users = [ "dimunyx" ];
					cmd = "sh";
					noPass = true;
				}
			];
		};
	};
}
