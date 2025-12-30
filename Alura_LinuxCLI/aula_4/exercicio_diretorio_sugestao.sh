#! /bin/bash

# Solicitamos ao usuário o caminho do diretório
read -p "Digite o caminho do diretório: " caminho

# Verificamos se o caminho do diretório é válido
if [ -d "$caminho" ]; then
	echo "O caminho é um diretório válido."
else
	echo "O caminho não é um diretório válido ou ele não existe."
fi
