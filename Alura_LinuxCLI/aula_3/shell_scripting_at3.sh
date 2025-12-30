# Interpretador utilizado
#! /bin/bash

# 1. Solicitação do nome do diretório a ser criado
read -p "Digite o nome do diretório a ser criado: " diretorio_novo

# 2. Criação do diretório
mkdir $diretorio_novo

# 3. Verificação do diretório criado
if [ -d "$diretorio_novo" ]; then
	echo "Diretório criado com sucesso!"
else
	echo "Erro na criação do diretório."
	exit 1
fi
