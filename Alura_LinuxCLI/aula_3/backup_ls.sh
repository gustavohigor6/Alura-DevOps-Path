#! /bin/bash

# 1. Pasta da origem dos dados e a listagem dos arquivos e pastas
diretorio_origem="/home/gustavo/devops"
ls "$diretorio_origem"

# 2. Pasta onde o arquivo .tar.gz será guardado
diretorio_destino="/home/gustavo/backups"

mkdir -p "$diretorio_destino"

# 3. Definição do nome do arquivo
nome_arquivo="${diretorio_destino}/backup_ls_$(date +%Y%m%d_%H%M%S).tar.gz"

# 4. Execução do arquivo
tar -czf "$nome_arquivo" "$diretorio_origem"

echo "Backup concluido com sucesso em: $nome_arquivo"
