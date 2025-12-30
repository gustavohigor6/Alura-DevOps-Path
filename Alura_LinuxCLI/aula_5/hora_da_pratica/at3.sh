#! /bin/bash

# Exercício 3: Crie um script que verifica se 
# um processo específico está em execução e exibe seu status.

# Leitura do processo procurado
read -p "Digite o nome do processo para a busca: " processo

# Verificação da execução do processo
# Obs: Não foi utilizado os colchetes para a execução do comando inserido no if
# A estrutura condicional está verificando o tipo de saída resultando do comando inserido
if pgrep "$processo" > /dev/null ; then
    echo "O processo ${processo} está sendo executado."
else
    echo "O processo ${processo} não está sendo executado."
    exit 1
fi
