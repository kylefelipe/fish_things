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

- [update_gh](./functions/update_gh.fish)
  Essa função faz o download da ferramenta cli do github na pasta downloads, precisa apenas passar a versão necessária.  
Após o download, o arquivo será instalado via dpkg.
O arquivo a ser baixado será o .deb na arquitetura amd64

Modo de uso:

  ```bash
  # Irá instalar a versão 1.12.1 do gh
  update_gh 1.12.1
  ````

Adicionando funções ao fish:
Copie o arquivo desejado da pasta `functions` para a pasta do fish `~/.config/fish/functions/`.
Reinicie o terminal para que a função funcione.

:: TODO: Fazer a função aceitar options;
