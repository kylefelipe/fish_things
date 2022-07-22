function activate
    echo "Activating virtual Environment"
    set QT_ARGS (count $argv)
    if contains -- -h $argv ; or contains -- --help
        echo "to no help"e
        usage
    else if test $QT_ARGS = 0; or contains -- -p $argv ; or contains -- --python
        set-python-venv
    end
end

function set-python-venv
    if test -d (pwd)/.venv
        echo "Venv found"
        source (pwd)/.venv/bin/activate.fish
        echo "Activated"
    else
        echo "No virtual environment found"
        echo "Please, create one"
    end
end

function usage
    echo 'vai fundo'
    return 1
end
