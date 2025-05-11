## user specified env
if not string match -q "$HOME/.local/bin:$HOME/bin:" "$PATH"
    set -gx PATH $HOME/.local/bin $HOME/bin $PATH
end

## prompt
fish_vi_key_bindings

function fish_prompt
    echo -n (set_color normal) (prompt_pwd)
    echo -n (set_color green)(fish_git_prompt)
    echo -n (set_color yellow) "\$ "
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            echo -ne "\e[2 q"
        case insert
            echo -ne "\e[6 q"
        case visual
            echo -ne "\e[2 q"
        case replace_one
            echo -ne "\e[4 q"
        case replace
            echo -ne "\e[4 q"
    end
end

## greeting
function fish_greeting
    set_color --bold yellow
    echo "Hello Oliver!"
end

## set default app
set -x EDITOR nvim
set -x VISUAL nvim

## alias