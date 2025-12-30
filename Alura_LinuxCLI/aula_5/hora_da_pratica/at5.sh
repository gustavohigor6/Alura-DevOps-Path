#! /bin/bash

# Exercício 5: Crie um script para monitorar as mensagens de erro no log do sistema em intervalos regulares usando cron jobs. 
# O script deve registrar em um arquivo as últimas 5 linhas de mensagens de erro, possibilitando uma visão periódica da atividade do sistema.

# Criação e verificação da pasta destino dos arquivos que registrarão os erros
mkdir -p /home/gustavo/aula_5/hora_da_pratica/log_erros

# Nome do arquivo a ser gerado
arquivo="/home/gustavo/aula_5/hora_da_pratica/log_erros/erros_$(date +%Y\%m\%d_%H%M).txt"

# Procurando o arquivo de log no sistema + Execução do comando para buscar os últimos registros de erro

if [ -f "/var/log/syslog" ]; then
	arquivo="/var/log/syslog"
	tail -n 5 "${arquivo}" | grep -i "error" > "${arquivo}"
elif [ -f "/var/log/messages" ]; then
	arquivo="/var/log/messages"
	tail -n 5 "${arquivo}" | grep -i "error" > "${arquivo}"
else
	journalctl -n 5 -p err > "${arquivo}"
fi
