function lscd -d="Lista containers docker no meu formato"
    command docker container ps --format "table {{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"
end
