function ctxdc -d="Muda o contexto do docker"
    argparse h/help d/default -- $argv
    or return 0
    set QT_ARGS (count $argv)
    if set -q _flag_help
        usage
        return 0
    end
    if contains -- -h $argv; or contains -- --help $argv; or test $QT_ARGS -gt 1 
        usage
    else if test $QT_ARGS = 0; or contains -- default $argv; or contains -- -d $argv; or contains -- -default $argv
        set NEW_CONTEXT default
    else if test $QT_ARGS = 1
        set NEW_CONTEXT $argv[1]
    end
    if test -n "$NEW_CONTEXT"
        docker context use $NEW_CONTEXT
    end
end

function usage
    echo "Change Docker context
    Usage:
    ctxdc [context]
    ex: ctxdc -> To use default docker context
        ctxdc docker-samsung -> to change context to docker-samsung
        ctxdc -d -> to change context to default
        ctxdc -default -> to change context to default
    "
    return 0
end
