set fish_greeting

export LANG=en_US.UTF-8
# Add Homebrew to $PATH
fish_add_path -p /opt/homebrew/bin /opt/homebrew/sbin

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias tm="tmux new-session -A -s main"
alias uni="cd ~/iCloudDrive/Uni/"
alias macode="cd ~/iCloudDrive/Uni/11.Semester/Proposal/Code_Refactor/gk-merge && source venv/bin/activate.fish"
alias venvon="source venv/bin/activate.fish"
alias l="ls -lah"
alias lsa="ls -a"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."
alias gcc="gcc-11"
alias g++="g++-11"

