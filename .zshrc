# USE FISH AS DEFAULT SHELL OR SWITCH BACK
# https://askubuntu.com/questions/26439/how-do-i-set-fish-as-the-default-shell
#
#
# Load colors
autoload -U colors && colors

# Enable ls colors
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export CLICOLOR=1

# Git info (https://www.themoderncoder.com/add-git-branch-information-to-your-zsh-prompt/)
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr '+'
# https://stackoverflow.com/questions/49744179/zsh-vcs-info-how-to-indicate-if-there-are-untracked-files-in-git
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[misc]='?'
  fi
}
zstyle ':vcs_info:git:*' formats '%F{blue}(%f%F{green}%b%f%F{yellow}%u%c%m%f%F{blue})%f'
setopt PROMPT_SUBST

# Customize promt
# PROMPT='$FG[032]%~%{$reset_color%}${vcs_info_msg_0_} $FG[105]$%{$reset_color%} '
PROMPT='%F{blue}%~%f${vcs_info_msg_0_} %F{magenta}$%f '
# RPS1=' $FG[237]%n@%m%{$reset_color%}'
RPS1=' %F{default}%n@%m%f'

# Aliases
alias l="ls -lah"
alias lsa="ls -a"
alias chrome="open -a 'Google Chrome'"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."

