#!/bin/bash
# curl -sSL https://raw.githubusercontent.com/Fabriciomadusouza/UpdateModules/main/anydeskubunt

# Verifica se o wget está instalado
if ! [ -x "$(command -v wget)" ]; then
  echo 'Error: wget is not installed. Please install wget before running this script.' >&2
  exit 1
fi

# Baixa o pacote de instalação do AnyDesk
wget -O anydesk.deb https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb

# Verifica se o download foi bem sucedido
if [ $? -ne 0 ]; then
  echo "Error: Failed to download AnyDesk package."
  exit 1
fi

# Instala o AnyDesk
sudo dpkg -i anydesk.deb

# Verifica se a instalação foi bem sucedida
if [ $? -ne 0 ]; then
  echo "Error: Failed to install AnyDesk."
  exit 1
fi

# Remove o pacote de instalação
rm anydesk.deb

echo "AnyDesk instalado com sucesso."
