#!/bin/bash

for i in `ls ./functions/*.fish`
do
  echo "Copiando arquivo $i para ~/.config/fish/functions/"
  ln $i ~/.config/fish/functions/
done

echo "Reinicie o terminal para que as funções funcionen."
