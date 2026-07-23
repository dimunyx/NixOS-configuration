{ config, lib, pkgs, ... }: {
	nix = {
		enable = true;
		package = pkgs.nixVersions.latest;
		settings = {
			experimental-features = [
				"nix-command"
				"flakes"
			];
			extra-substituters = [
				"https://noctalia.cachix.org"
			];
			substituters = [
				"https://attic.xuyh0120.win/lantian"
			];
 			extra-trusted-public-keys = [
				"lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
				"noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
			];
		};
	};
}
