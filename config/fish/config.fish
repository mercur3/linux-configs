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

function fish_user_key_bindings
    fish_vi_key_bindings
end

### ALIASES
alias ll="exa -alh"
