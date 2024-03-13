# inativar terminal 
# sudo wget -O- https://raw.githubusercontent.com/Fabriciomadusouza/UpdateModules/main/inactivating.sh | bash
# acesso-privilégio
sudo su
# limpar cache e config Chrome 
rm -r .cache/google-chrome && rm -r .config/google-chrome
# limpar cache e config Chromium
# rm -rf ~/.cache/chromium && rm -rf ~/.config.chromium
# remove token 
rm -f /opt/videosoft/vs-os-interface/log/_database_token-recovery.log
echo "*****************Inativação Concluida*************************"
