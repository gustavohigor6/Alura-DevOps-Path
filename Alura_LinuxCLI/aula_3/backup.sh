#! /bin/bash

# 1. Pasta a ser copiada (origem)
diretorio_backup="/home/gustavo/devops"

# 2. Pasta onde o arquivo tar.gz será guardado (destino)
diretorio_destino="/home/gustavo/backups"

# Cria a pasta de destino se ela ainda não existir
mkdir -p "$diretorio_destino"

# 3. Define o nome do arquivo incluindo o caminho de destino
nome_arquivo="${diretorio_destino}/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$nome_arquivo" "$diretorio_backup"

echo "Backup concluido em $nome_arquivo"

