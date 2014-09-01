ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="-"
ZSH_THEME_GIT_PROMPT_UNMERGED="!"

function _gitprompt {
    g="$(git_prompt_info)"
    [ -z "$g" ] && return

    s="$(git_prompt_status)"
    [ -n "$s" ] && echo -n "%{$fg_bold[magenta]%}$s"

    echo "$g%{$fg_bold[red]%} ← "
}

PROMPT='
%{$fg_bold[black]%}[%{$fg_bold[magenta]%}%?%{$fg_bold[black]%}] %{$fg_bold[black]%}[%{$fg_bold[red]%}%n%{$fg_bold[black]%}@%{$fg_bold[yellow]%}%M%{$fg_bold[black]%}]%{$fg_bold[black]%} [$(_gitprompt)%{$fg_bold[cyan]%}%5/%{$fg_bold[black]%}]
 %{$reset_color%}%# '
