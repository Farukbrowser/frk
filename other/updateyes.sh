#!/bin/bash
echo -e cheking update
sleep 2
#hapus
rm -f /usr/bin/setting
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/menu-vless
#download
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Farukbrowser/frk/main/other/menu.sh"
wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/Farukbrowser/frk/main/other/Themes/setting.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/Farukbrowser/frk/main/other/menu/usernew.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/Farukbrowser/frk/main/other/tes/menu-vless.sh"
echo "*/3 * * * * root bot" >> /etc/crontab
#izin
chmod 777 /usr/bin/usernew
chmod 777 /usr/bin/menu
chmod 777 /usr/bin/setting
chmod 777 /usr/bin/menu-vless
rm -rf updateyes.sh
menu
