# FISH THINGS

Coisas que estou vendo sobre o fish shell para agilizar produção.

## Alias

https://fishshell.com/docs/current/cmds/alias.html

## Functions

- [react_redux](functions/react_redux.fish)
  Essa função cria um react app na pasta, instala o redux e react-redux, e os diretórios básicos.

https://fishshell.com/docs/current/cmds/function.html#cmd-function

Modo de uso:

  `react_redux <nome do app>`

- [gitclimate](./functions/gitclimate.fish)
  Essa função analisa todos os arquivos que estão aguardando para serem adicionados

No bash

```bash
# Para uso no bash, basta adicionar essa função ao bashrc
gitclimate() { codeclimate analyze $( git diff --name-only ); }
```

Modo de uso:

  `gitclimate`

- [update_gh](./functions/update_gh.fish) [**Depreciado, gh instala via repositório**]
  Essa função faz o download da ferramenta cli do github na pasta downloads, precisa apenas passar a versão necessária.
Após o download, o arquivo será instalado via dpkg.
O arquivo a ser baixado será o .deb na arquitetura amd64

Modo de uso:

  ```bash
  # Irá instalar a versão 1.12.1 do gh
  update_gh 1.12.1
  ````

- [lscd](./functions/lscd.fish)
  Essa função lista containers docker com menos colunas

Modo de uso:

```bash
lscd
```

- [activate](./functions/activate.fish)
  Essa função ativa um ambiente vitual em python, é possível informar em qual pasta o ambiente está.
  Por padrão sempre busca na pasta `.venv`.

Modo de uso:

```bash
activate
> (.venv)
```

Informando a pasta do ambiente:

```bash
activate .venv3.10
> (.venv3.10)
```

- [ctxcd](./functions/ctxdc.fish)
  Essa função ativa muda o contexto do docker

Modo de uso:

```bash
# Muda o contexto do docker para o default
ctxdc
ctxdc -d
ctxdc -default
# Muda o contexto do docker para algum que tenha criado ex: docker-samsung
ctxdc docker-samsung
```

- [pgadmin](./functions/pgadmin.fish)
  Essa função inicia ou para o container do PgAdmin localmente

Modo de uso:

```bash
pgadmin # Inicia o container
pgadmin -d # Para o container
pgadmin -down # Para o container
```

- [pytq](./functions/pytq.fish)
  Essa função ativa o ambiente virutal do python a ser utiliado nos projetos da TerraQ

```bash
pytq # Ativa o ambiente.
deactivate # desativa o ambiente.
```

Adicionando funções ao fish:

Para instalar todas as funções para o fish, basta executar `install_fish.sh`, e um link das funções será criado na pasta do fish.
Caso queira instalar funções separadas, copie o arquivo desejado da pasta `functions` para a pasta do fish `~/.config/fish/functions/` ou crie um link do mesmo para a pastas.
Reinicie o terminal para que as funções funcionen.

:: TODO: Fazer a função aceitar options;
