{ config, lib, pkgs, inputs, ... }:

{
	imports = [
		./modules
    	./hardware-configuration.nix
    ];
}