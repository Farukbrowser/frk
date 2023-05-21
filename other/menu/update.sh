#!/bin/bash
LocalVersion=$(cat /root/versi)
Version=$(curl -sS https://raw.githubusercontent.com/Farukbrowser/frk/main/versi | awk '{print $2}')
if [ $LocalVersion = $Version ]; then
echo -e "The Script Is Already Latest Version..." | lolcat
else
echo -e "Updates available!!";
wget -q -O updateyes.sh https://raw.githubusercontent.com/Farukbrowser/frk/main/updateyes.sh && chmod +x updateyes.sh && ./updateyes.sh
rm -f updateyes.sh
fi
