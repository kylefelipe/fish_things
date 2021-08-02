function gitclimate --description "Faz a análise do code climate nos arquivos editados que o git encontrou"
    codeclimate analyze (git diff --name-only);
end
