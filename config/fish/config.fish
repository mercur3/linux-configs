### EXPORTS
set fish_greeting
set TERM "alacritty"
set EDITOR "vim"
set VISUAL "vim"

set fish_cursor_unknown block
set fish_cursor_default block
set fish_cursor_insert block
set fish_cursor_replace_one underscore
set fish_cursor_visual block

### ALIASES
alias ll="exa -alh"

### FUNCTIONS
function fish_user_key_bindings
    fish_vi_key_bindings
end

function fish_prompt
    printf "[%s%s@%s %s%s%s]%s\$%s " \
        (set_color green) $USER (hostname) \
        (set_color cyan) $PWD (set_color $fish_color_normal) \
        (set_color yellow) (set_color $fish_color_normal)
end
