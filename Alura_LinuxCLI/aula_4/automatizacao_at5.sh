#! /bin/bash

# Escreva um script para automatizar o backup de um diretório específico para um local de destino, utilizando a compressão gzip.

# 1. Identificando o diretório que faremos o backup
echo "Informe o diretório do backup:"
read diretorio_backup
echo "Informe o diretório de destino do backup:"
read  diretorio_destino

# 2. Montando o backup
nome_arquivo="${diretorio_destino}/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$nome_arquivo" ${diretorio_backup}
echo "Backup do diretório realizado com sucesso!"
