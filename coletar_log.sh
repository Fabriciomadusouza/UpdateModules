#!/bin/bash
#acesso master
sudo su
# Diretório onde estão os logs da aplicação
diretorio_logs="/opt/videosoft/vs-os-interface/log"

# Obtém a data atual no formato esperado para o nome do arquivo de log
data_atual=$(date +"%Y-%m-%d")

# Constrói o nome completo do arquivo de log usando a data atual
arquivo_log="vs-fast-food-2.0_${data_atual}.log"

# Verifica se o arquivo de log atual existe
if [ -e "$diretorio_logs/$arquivo_log" ]; then
    # Obtém o diretório da área de trabalho do usuário
    diretorio_area_de_trabalho="/root/Desktop"

    # Copia o arquivo de log atual para a área de trabalho
    cp "$diretorio_logs/$arquivo_log" "$diretorio_area_de_trabalho"
    echo "Arquivo de log do dia $data_atual copiado para a área de trabalho."
else
    echo "O arquivo de log do dia $data_atual não foi encontrado."
fi
