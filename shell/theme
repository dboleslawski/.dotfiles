#based on the ys theme (ty ys)
#http://blog.ysmood.org/my-ys-terminal-theme/

#for my own and others sanity (ty sindresorhus)
#%F => color dict
#%f => reset color
#%~ => current path
#%* => time
#%n => username
#%m => shortname host
#%(?..) => prompt conditional - %(condition.true.false)

#git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}on%{$reset_color%} %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"

#\n # USER at MACHINE in DIRECTORY on BRANCH STATE \n $ 
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