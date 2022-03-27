HISTFILE="$ZDOTDIR/.histfile"
HISTSIZE=1000
SAVEHIST=1000

# Activate vim mode.
bindkey -v
# Remove mode switching delay.
KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[2 q'

    elif [[ ${KEYMAP} == main ]] ||
           [[ ${KEYMAP} == viins ]] ||
           [[ ${KEYMAP} = '' ]] ||
           [[ $1 = 'beam' ]]; then
        echo -ne '\e[6 q'
    fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[6 q'
_fix_cursor() {
   echo -ne '\e[6 q'
}
precmd_functions+=(_fix_cursor)




# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
stty stop undef
compinit
# End of lines added by compinstall

# Aliases
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"
alias ll="exa -alh"
alias ls="ls --color=auto"
alias xzegrep="xzegrep --color=auto"
alias xzfgrep="xzfgrep --color=auto"
alias xzgrep="xzgrep --color=auto"
alias zegrep="zegrep --color=auto"
alias zfgrep="zfgrep --color=auto"
alias zgrep="zgrep --color=auto"

# Behave more like BASH
setopt no_auto_remove_slash

TRAPINT() {
    print -n "^C"
    return $(( 128 + $1 ))
}

PS1="[%B%F{green}%n%b%F{magenta}@%B%F{green}%m %B%F{cyan}%~%b%f]%B%F{yellow}$%b%f "

# Syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
