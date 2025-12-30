#! /bin/bash

# 1. Identificando o diretório da origem das imagens
read -p "Informe o diretório que contém as imagens para conversão: " diretorio_fonte

if [ ! -d "$diretorio_fonte" ]; then
	echo "Diretório não encontrado!"
	exit 1
fi

# 2. Estrutura de repetição para percorrer todos os arquivos com a extensão .jpg e realizando sua conversão 
# Para utilizar o comando 'convert', é necessário o programa ImageMagick
for imagem_jpg in "$diretorio_fonte"/*.jpg; do
	convert "$imagem_jpg" "${imagem_jpg%.jpg}.png" && echo "Imagem convertida: ${imagem_jpg%.jpg}.png" || echo "Falha na conversão: $imagem_jpg"
done

echo "Conversão concluída!"
