# Goes up a specified number of directories (i.e. up 4)
function up
    set -l d ""
    set limit $argv[1]
    for i in (seq 1 $limit)
        set d "$d/.."
    end
    set d (echo $d | sed 's/^\///')
    if test -z "$d"
        set d ".."
    end
    cd $d
end

