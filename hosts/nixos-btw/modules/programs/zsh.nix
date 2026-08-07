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
				matrix = "unimatrix --color blue --speed 96";
				cpufetch = "cpufetch --color 137,180,250:137,180,250:137,180,250:205,214,244:205,214,244";
				start-video = "gpu-screen-recorder -w screen -o '/home/dimunyx/Видео/Выходные видео/output.mp4' -c mp4 -f 60 -k h264 -q very_high -a default_output";
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
				# Iris Autocomplete Hook (activates only inside an IRIS session)
				if [ -n "$IRIS_PID" ] && [ -n "$IRIS_FD" ]; then
					_iris_send_lbuffer() {
						print -u $IRIS_FD -N -r -- "$LBUFFER" 2>/dev/null
					}
					_iris_sync_cwd() {
						print -u $IRIS_FD -N -r -- "IRIS_CWD:$PWD" 2>/dev/null
					}
					_iris_precmd() {
						local iris_exit_code=$?
						_iris_sync_cwd
						print -u $IRIS_FD -N -r -- "IRIS_CMD_STOP:$iris_exit_code" 2>/dev/null
					}
					_iris_preexec() {
						print -u $IRIS_FD -N -r -- "IRIS_CMD_START" 2>/dev/null
					}
					autoload -Uz add-zle-hook-widget
					autoload -Uz add-zsh-hook
					add-zle-hook-widget line-pre-redraw _iris_send_lbuffer
					add-zsh-hook precmd _iris_precmd
					add-zsh-hook preexec _iris_preexec
					add-zsh-hook chpwd _iris_sync_cwd
				# Auto-launch iris so autocomplete is always available
				elif command -v iris >/dev/null 2>&1; then
					exec iris
				fi
    			'';
		};
	};
}
