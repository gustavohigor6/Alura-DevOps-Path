#! /bin/bash

# 1. Estrutura condicional para validar a quantidade de argumentos
if [ "$#" -lt 1 ]; then
	echo "Quantidade de argumentos insuficiente"
	exit 1
fi

# 2. Estrutura condicional para testar a validade de um caminho de diretório informado pelo usuário
# Usando -d por retornar verdadeiro apenas se for um diretório
# Ao utilizar -e, retorna verdadeiro se existir qualquer coisa com o nome do primeiro argumento
if [ -d "$1" ]; then
	echo "Diretório $1 encontrado"
else
	echo "Diretório $1 não encontrado"
	exit 1
fi
