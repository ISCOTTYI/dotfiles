set fish_greeting

export LANG=en_US.UTF-8

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias tm="tmux new-session -A -s main"
alias vi=/usr/local/bin/vim
alias vim=/usr/local/bin/vim
alias gcc=/usr/local/bin/gcc-11
alias g++=/usr/local/bin/g++-11
alias uni="cd ~/iCloudDrive/Uni/"
alias macode="cd ~/iCloudDrive/Uni/11.Semester/Proposal/Code_Refactor/gk-merge && source venv/bin/activate.fish"
alias l="ls -lah"
alias lsa="ls -a"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."

