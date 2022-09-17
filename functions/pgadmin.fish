function pgadmin -d="Ativa ou desativa o PgAdmin localmente"
    set QT_ARGS (count $argv)
    if set -q _flag_help
        usage
        return 0
    end
    if contains -- -h $argv; or contains -- --help $argv; or test $QT_ARGS -gt 1
        usage
    else if contains -- -d $argv; or contains -- --down $argv
        echo "Parando o container pgadmin"
        docker context use default
        docker stop pgadmin
    else
        echo "Iniciando o container pgadmin"
        docker context use default
        docker start pgadmin
    end
end

function usage
    echo "Start/Stop PgAdmin Docker Container
    Usage:
    pgadmin [-d/--down]
    ex: pgadmin -> To start container pgadmin
        pgadmin -d -> To stop container pgadmin
        pgadmin -down -> To stop container pgadmin
    "
    return 0
end
