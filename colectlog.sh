#!/bin/bash
# Coleta log
# chmod +x https://raw.githubusercontent.com/Fabriciomadusouza/UpdateModules/main/colectlog.sh
# Acesso privilégiado 
sudo su 
# Acessando a pasta do log 
cd /opt/videosoft/vs-os-interface/log/ || exit
# Encontrando o arquivo mais recente que começa com 'vs-fast-food-2'
arquivo_mais_recente=$(ls -t vs-fast-food-2* | head -n 1)
# Verificando se o arquivo mais recente foi encontrado
if [ -n "$arquivo_mais_recente" ]; then
    # Copiando o arquivo mais recente para a área de trabalho
    cp "$arquivo_mais_recente" ~/Desktop/
    echo "Arquivo mais recente copiado para a área de trabalho."
else
    echo "Nenhum arquivo encontrado com o prefixo vs-fast-food-2
# Definindo o diretório de destino onde o log será salvo na sua máquina
# diretorio_destino="$HOME/Desktop"
# Definindo o diretório onde está localizado o log no servidor
#diretorio_origem="/opt/videosoft/vs-os-interface/log/"
# Copiando o arquivo
#cp "$caminho_origem" "$caminho_destino"
