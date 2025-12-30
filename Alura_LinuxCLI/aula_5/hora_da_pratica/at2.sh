#! /bin/bash

# Exercício 2: Desenvolva um script que utiliza comandos 
# como ps e sort para exibir os processos que estão consumindo mais memória.

echo "Top 5 processos por uso de memória RAM(%):"
echo ""

# Determinando quais colunas deverão ser exibidas + tratamento dos dados encontrados

ps -e -o pid,command,%mem --sort=-%mem | head -n 6
