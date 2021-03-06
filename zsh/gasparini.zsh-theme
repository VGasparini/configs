local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜) "

PROMPT='${ret_status}%{$fg[white]%}[%{$fg[yellow]%} %n %{$fg[white]%}:%{$fg[red]%} ${PWD/#$HOME/~} %{$fg[white]%}]%{$reset_color%} $(git_prompt_info)%{$reset_color%}'

script="from netifaces import interfaces, ifaddresses, AF_INET
import sys

ips = []

for ifaceName in interfaces():
    addresses = [i['addr'] for i in ifaddresses(ifaceName).setdefault(AF_INET, [{'addr':'nope'}] )]
    if (addresses[0] != 'nope' and not '127' in addresses[0]):
        for adds in addresses:
            if not '172' in adds:
                ips.append(adds)

sys.stdout.write(', '.join(ips))"

function get_ips {
	echo `python -c $script` 2>/dev/null
}

RPROMPT='%{$fg_bold[white]%}< %{$fg[red]%}$(get_ips)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}[ %{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%} ] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%} ]"
