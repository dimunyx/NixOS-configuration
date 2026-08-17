{ ... }: {
	programs = {
		zsh = {
			enable = true;
			histSize = 16000;
			setOptions = [
				"autocd"
			];
			shellAliases = {
				dev = "cd ~/dev";
				clear = "pyroclear";
				nixos-status = "cd $HOME/.config/nixos && git status";
				nixos-dir = "cd $HOME/.config/nixos";
				matrix = "unimatrix --color blue --speed 96";
				nixos-add = "cd $HOME/.config/nixos && git add .";
				cpufetch = "cpufetch --color 137,180,250:137,180,250:137,180,250:205,214,244:205,214,244";
				start-video = "gpu-screen-recorder -w screen -o '/home/dimunyx/Видео/Выходные видео/output.mp4' -c mp4 -f 60 -k h264 -q ultra -a default_output";
			};
			enableLsColors = true;
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
			'';
		};
	};
}
