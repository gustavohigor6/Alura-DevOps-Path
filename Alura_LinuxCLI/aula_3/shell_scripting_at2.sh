# Interpretador do código
#" /bin/bash

# 1. Diretório a ser copiado
read -p "Digite o caminho do diretório a ser copiado: " diretorio_fonte

# Verificação do diretório informado
if [ -d "$diretorio_fonte" ]; then
	echo "O caminho $diretorio_fonte será copiado."
else
	echo "O caminho $diretorio_fonte não existe, verifique novamente."
	exit 1
fi

# 2. Diretório destino da cópia
read -p "Digite o destino da cópia do $diretorio_fonte: " diretorio_destino

# Verificação do diretório destino/CORREÇÃO cp > tar
if [ -d "$diretorio_destino" ]; then
	nome_arquivo="${diretorio_destino}/copia_de_seguranca_$(date +%Y%m%d_%H%M%S).tar.gz"
	tar -czf "$nome_arquivo" "$diretorio_fonte"
else
	echo "O $diretorio_destino não foi encontrado."
	exit 1
fi
