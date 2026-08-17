{ pkgs, ... }: {
  	programs = {
		zsh = {
    		enable = true;
    		enableAutosuggestions = true;
    		ohMyZsh = {
      			enable = true;
      			plugins = [
        			"command-not-found"
        			"fzf"
        			"git"
        			"z"
      			];
      			cacheDir = "$HOME/.cache/oh-my-zsh";
    		};
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
				source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
      			bindkey '^[[A' history-substring-search-up
      			bindkey '^[[B' history-substring-search-down
      			bindkey '^[[1;5C' forward-word
      			bindkey '^[[1;5D' backward-word
      			bindkey '^H' backward-kill-word
    		'';
  		};
	};
}