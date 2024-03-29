function react_redux --description "Inicia um app react e cria estrutura de pastas básicas do redux. usage: react_redux nome_do_app"
    if test $argv[1]
        echo "Criando o app react $argv[1]."
        command npx create-react-app $argv[1]
        if test $status = 0
            echo "entrando na pasta $argv[1]"
            cd $argv[1]
            echo "Instalando o redux e react-redux."****
            npm install --save redux react-redux
            echo "Criando as pastas para o redux."
            mkdir -p src/reducer
            mkdir -p src/actions
            mkdir -p src/store
            mkdir -p src/components
            echo "Criando os arquivos index nas pastas do redux."
            if test $status = 0
              echo import \{ createStore \} from 'redux'\;\n >> ./src/store/index.js;
              echo const store \= createStore\(\)\;\n >> ./src/store/index.js;
              echo export default store\;\n >> ./src/store/index.js;
            end
            if test $status = 0
              touch src/reducer/index.js
              touch src/actions/index.js
            end
        end
        echo "Abrindo o VSCode."
        code .
    else
        echo "Precisa especificar o nome do APP."
        echo "Exemplo: react_redux um_app_qualquer"
    end
end
