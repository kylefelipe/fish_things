# FastCommit

```bash
function fastCommit --description "acelera o commit e push dos requisitos de projetos como os de mongo"
    if test $argv[1]
        echo "Adicionando o arquivo desafio$argv[1].js"
        command git add desafio$argv[1].js
        if test $status = 0
            echo "Commitando o arquivo desafio$argv[1].js"
            command git commit -m "Passando no desafio desafio$argv[1].js"
        end
    else
        echo "É necessário passar o número do requisito."
        echo "Exemplo: fastCommit 1"
    end
end
```

# GenDesafios

```bash
function genDesafios --description "Cria os arquivos de desafios de projetos como os de mongo"

    if test $argv[1]
        echo "criandos os arquivos"
        for i in (seq $argv[1])
          touch desafio$i.$argv[2]
        end
    else
        echo "É necessário passar o número de desafios e extensão do arquivo."
        echo "Exemplo: fenDesafios 20 js"
    end
end
```
