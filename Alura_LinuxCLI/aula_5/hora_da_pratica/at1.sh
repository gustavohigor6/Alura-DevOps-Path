#! /bin/bash

# Exercício 1: Hora da Prática
# Crie um script que utiliza comandos como ps e grep para monitorar os 
# processos que estão utilizando uma porcentagem significativa da CPU.

# grep = ferramenta de pesquisa

echo "Top 5 processos por uso de CPU(%):"
echo ""

# Determinando quais colunas deverão ser exibidas + tratamento dos dados encontrados

ps -e -o pid,command,%cpu --sort=-%cpu | head -n 6
