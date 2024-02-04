function activate
    set QT_ARGS (count $argv)
    set venv_name ".venv"
    if contains -- -h $argv; or contains -- --help $argv
        usage
        return 1
    else if contains -- -p $argv; or contains -- --poetry $argv
        echo "Ativando Ambiente Virtual com Poetry"
        poetry shell
        return 1
    else if test $QT_ARGS = 1
        echo "Ativando python direto"
        set-python-venv $argv[1]
        return 1
    else if test $QT_ARGS -ge 1; or contains -- -p $argv; or contains -- --python $argv
        if test $QT_ARGS -ge 1
            set venv_name $argv[2]
        end
        set-python-venv $venv_name
    end
end

function set-python-venv
    echo "Ativando Ambiente Virtual2"
    set venv_name $argv[1]
    if test -d (pwd)/$venv_name
        echo "Ambiente Virtual" $venv_name encontrado
        source (pwd)/$venv_name/bin/activate.fish
        echo Activated
    else
        echo "Ambiente virtual" $venv_name "não encontrado"
        echo "Verifique se o ambiente virtual existe ou crie um novo"
    end
end

function usage
    echo 'Modo de Uso'
    echo ' activate [OPÇÕES] [nome_ambiente_virtual]'
    echo 'Opções:'
    echo ' -h, --help: Mostra a ajuda'
    echo ' nome_ambiente_virtual: Nome da pasta contendo o ambiente virtual a ser ativado,'
    echo '      caso não seja informado, o nome padrão é .venv'
    echo 'Exemplo:'
    echo ' activate .venv3.10'
    echo 'Ativa o python do ambiente virtual na pasta .venv3.10'

    return 1
end
