#! /bin/bash

# Desenvolva um script que automatiza a criação de usuários no sistema, solicitando ao usuário que forneça o nome e outros detalhes necessários.

# 1. Solicitando ao usuário os dados do usuário
read -p "Insira o nome do usuário: " nome
read -p "Insira o telefone do usuário: " telefone
read -p "Insira o endereço do usuário: " endereco
read -p "Insira a idade do usuário: " idade

echo "Gerando o cadastro.."

# 2. Criação da pasta (se não houver) que guardará os dados
diretorio_destino="/home/gustavo/aula_4/aplicacao_at3/$(date +%Y_%m)"
mkdir "$diretorio_destino"

# 3. Criação do arquivo para o cadastro
nome_arquivo="$nome$(date +%Y).txt"

touch "${diretorio_destino}/$nome_arquivo"

# 4. Inserindo o conteúdo no arquivo criado

printf "Nome:\t\t%s\nTelefone:\t%s\nEndereço:\t%s\nIdade:\t\t%s\n" "$nome" "$telefone" "$endereco" "$idade" >> "${diretorio_destino}/$nome_arquivo"

echo "Cadastro criado com sucesso!"
