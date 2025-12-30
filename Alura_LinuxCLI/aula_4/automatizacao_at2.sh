#! /bin/bash

# 1. Identificando se é um prefixo ou sufixo
read -p "Entre com a opção de adição desejada: 'prefixo' ou 'sufixo' " acao

# 2. Case para que o base execute de acordo com a opção desejada
case "$acao" in
	"prefixo")
		# Leitura dos parâmetros requeridos pelo usuário
		read -p "Qual prefixo você gostaria de inserir? " prefixo
		read -p "Em qual diretório você quer aplicar essa ação? " diretorio_prefixo
		
		# Estrutura condicional para validar o diretório informado
		if [ ! -d "$diretorio_prefixo" ]; then
			echo "Diretório não encontrado!"
			exit 1
		else
			# Laço de repetição para criar o novo nome a ser inserido com o ajuste em questão
			for i in "$diretorio_prefixo"/*; do
				novo_nome="${diretorio_prefixo}/$prefixo$(basename "$i")"
				mv "$i" "$novo_nome"
				echo "Renomeado: $(basename "$i") -> $(basename "$novo_nome")"
			done
		fi
	;;
	"sufixo")
		# Leitura dos parâmetros requeridos pelo usuário
		read -p "Qual sufixo você gostaria de inserir? " sufixo
		read -p "Em qual diretório você quer aplicar essa ação? " diretorio_sufixo
		
		# Estrutura condicional para validar o diretório informado
		if [ ! -d "$diretorio_sufixo" ]; then
			echo "Diretório não encontrado!"
			exit 1

		else
			# Laço de repetição para criar o novo nome a ser inserido com o ajuste em questão
			for j in "$diretorio_sufixo"/*; do
				novo_nome1="${diretorio_sufixo}/$(basename "$j")$sufixo"
				mv "$j" "$novo_nome1"
				echo "Renomeado: $(basename "$j") -> $(basename "$novo_nome1")"
			done
		fi
	;;
	*)
	echo "Opção incorreta, verifique novamente"
	exit 1
	;;
esac
