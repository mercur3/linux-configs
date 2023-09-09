if status is-interactive
    # Commands to run in interactive sessions can go here
end

# aliases
alias ls="ls --color=always"
alias ll="eza -alh"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias vi="nvim"
alias gitlog="git log --all --decorate --graph"

fish_vi_key_bindings

set fish_prompt_pwd_dir_length 0
set fish_greeting
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

function fish_prompt
    printf "%s[%s%s%s%s@%s%s %s%s%s]%s\$%s%s%s " \
        (set_color -o red) \
        (set_color green) $USER \
        (set_color normal) (set_color magenta) \
        (set_color -o green) $hostname \
        (set_color blue) (prompt_pwd) \
        (set_color red) \
        (set_color green) \
        (set_color normal) \
        (fish_git_prompt) \
        (set_color normal)
end

