#! /bin/bash

# Mãos na massa: monitorando o consumo de memória com scripts

# Criação da pasta a ser utilizada
mkdir -p consumo_memoria

# Definimos o caminho para o arquivo de saída
arquivo="/home/gustavo/aula_5/consumo_memoria/top_process_$(date +\%Y\%m\%d_\%H\%M).txt"

# Estamos acessando todos os processos.
# Com eles, escolhemos apenas as colunas: PID; MEMÓRIA (em %)
# --sort=-%mem está ordenando em ordem decrescente os resultados
# Após este ordenamento, o head seleciona as 16 primeiras linhas 
ps -e -o pid,%mem --sort=-%mem | head -n 16 > "${arquivo}"
