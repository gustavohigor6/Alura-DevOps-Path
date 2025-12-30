# Interpretador utilizado
#! /bin/bash

# 1. Verificando se o usuário passou uma quantidade de argumentos válida
if [ "$#" -lt 1 ]; then
	echo "Quantidade de argumentos insuficiente."
	exit 1
fi

# 2. Armazenando o primeiro argumento
nome_arquivo=$1

# 3. Verificando se o arquivo existe
if [ -e "$nome_arquivo" ]; then
	echo "O $nome_arquivo foi encontrado"
else
	echo "O $nome_arquivo não foi encontrado, verifique novamente."
	exit 1
fi
