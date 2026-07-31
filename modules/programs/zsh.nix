{ config, lib, pkgs, ... }: {
	programs = {
		zsh = {
			enable = true;
			histSize = 16000;
			setOptions = [
				"autocd"
			];
			shellAliases = {
				dev = "cd ~/GitHub";
				matrix = "unimatrix --color blue --speed 96";
				cpufetch = "cpufetch --color 140,170,238:140,170,238:140,170,238:198,208,245:198,208,245";
				start-video = "gpu-screen-recorder -w screen -o '/home/dimunyx/Видео/Выходные видео/output.mp4' -c mp4 -f 60 -k h264 -q very_high -a default_output";
			};
			enableLsColors = true;
			autosuggestions = {
				enable = true;
			};
			enableCompletion = true;
			syntaxHighlighting = {
				enable = true;
			};
			histFile = "$HOME/.zsh_history";
			interactiveShellInit = ''
      				autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
      				zle -N up-line-or-beginning-search
      				zle -N down-line-or-beginning-search
      				bindkey '^[[A' up-line-or-beginning-search
      				bindkey '^[[B' down-line-or-beginning-search
      				bindkey '^[[1;5C' forward-word
      				bindkey '^[[1;5D' backward-word
      				bindkey '^H' backward-kill-word
      				bindkey '^R' history-incremental-search-backward
    			'';
		};
	};
}
