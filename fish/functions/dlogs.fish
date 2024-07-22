function dlogs
    echo $argv
    set container $argv[1]
    if test -n "$argv[2]"
        set n $argv[2]
    else
        set n 10
    end
    echo "dc logs --tail $n -f $container"
    dc logs --tail $n -f $container
end
