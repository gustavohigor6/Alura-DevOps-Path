#! /bin/bash

# Exercício 4: Elabore um script para analisar os 
# logs do sistema em busca de mensagens de erro relacionadas a processos.

# Procurando o arquivo de log no sistema + Execução do comando para buscar os últimos registros de erro

if [ -f "/var/log/syslog" ]; then
	arquivo="/var/log/syslog"
	tail -n 10 "${arquivo}" | grep -i "error"
elif [ -f "/var/log/messages" ]; then
	arquivo="/var/log/messages"
	tail -n 10 "${arquivo}" | grep -i "error"
else
	echo "Tentando acessar a pasta journal."
	journalctl -n 10 -p err
fi
