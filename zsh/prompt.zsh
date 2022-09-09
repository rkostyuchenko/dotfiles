autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%r/%S %F{green}%b%F{reset_color} "
precmd() {
    vcs_info
}

setopt prompt_subst
PROMPT='${vcs_info_msg_0_}%# '
