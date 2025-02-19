if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Starship Start
starship init fish | source

# AutoJump Sourcing
begin
    set --local AUTOJUMP_PATH /usr/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end


# Source fzf file
source ~/.config/fish/functions/fzf.fish

if status is-interactive && test -f ~/.aliases
  source ~/.aliases
end

# Created by `pipx` on 2025-02-10 19:20:58
set PATH $PATH /home/humam/.local/bin

fastfetch
