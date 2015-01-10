#modified ys theme
#http://blog.ysmood.org/my-ys-terminal-theme/

#git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}on%{$reset_color%} %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"

#prompt format: \n # USER at MACHINE in DIRECTORY on BRANCH STATE \n $ 
#%n is the current user
#%~ is the current path with any variables replaced
PROMPT="
%{$fg[blue]%}#%{$reset_color%} \
%{$fg[cyan]%}%n \
%{$fg[white]%}at \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~$reset_color%}\
${git_info} \
%{$fg[white]%}
%{$fg[red]%}$ %{$reset_color%}"

if [[ "$USER" == "root" ]]; then
	PROMPT="
	%{$fg[blue]%}#%{$reset_color%} \
	%{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
	%{$fg[white]%}at \
	%{$fg[green]%}$(box_name) \
	%{$fg[white]%}in \
	%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
	${git_info} \
	%{$fg[white]%}
	%{$fg[red]%}$ %{$reset_color%}"
fi