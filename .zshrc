export TERM="xterm-256color"

export ZSH="/home/matthew/.oh-my-zsh"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/opt/sublime_text/

alias sublime='sublime_text'
alias blender='exec ~/Downloads/blender-2.82a-linux64/blender'
alias view='evince'
alias ll='la -la'
alias mba='make builda'
alias mca='make compilea'
alias mbb='make buildb'
alias mcb='make compileb'
alias mbc='make buildc'
alias mcca='make compilec'
alias gpm='git push origin master'
alias stool='python3 ~/Downloads/StarTool-master/startool.py'


PROMPT='%B%F{208}%3~%b%f %$ '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{76}(%b)%r%f'
zstyle ':vcs_info:*' enable git

	

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/matthew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/matthew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/matthew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/matthew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

