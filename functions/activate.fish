function activate
    echo "Ativando Ambiente Virtual"
    set QT_ARGS (count $argv)
    if contains -- -h $argv; or contains -- --help
        usage
    else if test $QT_ARGS = 0; or contains -- -p $argv; or contains -- --python $argv
        set venv_name ".venv"
        if test $QT_ARGS -ge 2
            set venv_name $argv[2]
        end
        set-python-venv $venv_name
    end
end

function set-python-venv
    set venv_name $argv[1]
    if test -d (pwd)/$venv_name
        echo "Ambiente Virtual " $venv_name " encontrado"
        source (pwd)/$venv_name/bin/activate.fish
        echo Activated
    else
        echo "Ambiente virtual "$venv_name" não encontrado"
        echo "Verifique se o ambiente virtual existe ou crie um novo"
    end
end

function usage
    echo 'Modo de Uso'
    echo ' activate [-h|--help] [-p|--python] [nome_ambiente_virtual]'
    echo 'Exemplo:'
    echo ' activate -p .venv3.10'
    echo 'Ativa o python do ambiente virtual na pasta .venv3.10'
    echo 'Parâmetros:'
    echo ' -h, --help: Mostra a ajuda'
    echo ' -p, --python: Não Implementado'
    echo ' nome_ambiente_virtual: Nome da pasta contendo o ambiente virtual a ser ativado,'
    echo '      caso não seja informado, o nome padrão é .venv'

    return 1
end
