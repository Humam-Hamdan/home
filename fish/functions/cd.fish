# Automatically do an ls after each cd, z, or zoxide
function cd
    if test -n "$argv"
        builtin cd $argv; and ls
    else
        builtin cd ~; and ls
    end
end
