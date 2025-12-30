#! /bin/bash

# Construa um script para monitorar o espaço em disco usando o comando df na coleta de informações.

espaco=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
disponivel=$((100 - espaco))

if [ $espaco -gt 90 ]; then
	echo "Alerta: Espaço em disco excedeu 90%"
	echo "Espaço disponível: $disponivel%."
else
	echo "Espaço em disco está abaixo do limite de 90%"
	echo "Espaço disponível: $disponivel%."
fi
