function prompt_char {
    if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

function host_color {
    case $(hostname) in
	'purple') echo 'magenta';;
	'red') echo 'red';;
	'yellow') echo 'yellow';;
	'cyan') echo 'cyan';;
	*) echo 'green';;
    esac
}

function name_color {
    echo 'green'
}

PROMPT="%(!.%{$fg_bold[red]%}.%{$fg_bold[$(name_color)]%}%n@)%{$fg_bold[$(host_color)]%}%m %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
