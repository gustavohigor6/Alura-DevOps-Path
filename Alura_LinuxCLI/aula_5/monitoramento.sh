#! /bin/bash

# Utilização do if sem os colchetes
# O if está testando se o comando em questão será executaco com sucesso, ou seja, se o pgrep encontrará processos com o nome nginx
if pgrep nginx &> /dev/null
then
	echo "Nginx está operando $( date +"%Y-%m-%d_%H:%M:%S")"
else 
	echo "Nginx fora de operação $( date +"%Y-%m-%d_%H:%M:%S")"
fi
