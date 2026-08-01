{ pkgs, lib, inputs, ... }:
let
  	wallpapers = "${inputs.wall-archive}/wallpapers";
in
{
  	home = {
		file = {
    			".config/wallpapers" = {
      				source = "${wallpapers}";
     	 			recursive = true;
    			};
  		};
	};
}
