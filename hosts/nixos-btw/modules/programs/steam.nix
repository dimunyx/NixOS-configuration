{ pkgs, inputs, ... }: {
	programs = {
		steam = {
			enable = true;
			fontPackages = with pkgs; [
				monocraft
			];
			remotePlay = {
				openFirewall = true;
			};
    			dedicatedServer = {
				openFirewall = true;
			};				
			package = pkgs.millennium-steam;
		};
	};
}
