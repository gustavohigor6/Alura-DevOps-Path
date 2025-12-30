#! /bin/bash

# 1. Estrutura condicional para verificar se foram passados exatamente dois parâmetros
if [ $# -ne 2 ]; then
	echo "Erro! Não foram forncediso dois argumentos"
	exit 1
fi

# 2. Atribuição dos argumentos em variáveis
arg1=$1
arg2=$2

echo "O primeiro argumento é: $arg1"
echo "O segundo argumento é: $arg2"
