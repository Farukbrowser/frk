#!/bin/bash
#installer Websocker tunneling 

cd
apt install python -y

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/edu-proxy https://raw.githubusercontent.com/Farukbrowser/frk/main/all/websocket/https.py && chmod +x /usr/local/bin/edu-proxy
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/Farukbrowser/frk/main/insshws/dropbear-ws.py.txt
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/Farukbrowser/frk/main/insshws/ws-stunnel.txt
wget -O /usr/local/bin/edu-proxyovpn https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/ovpn.py && chmod +x /usr/local/bin/edu-proxyovpn

#izin permision
#chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel
#chmod +x /usr/local/bin/ws-ovpn


#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-openssh.service https://github.com/andristji/Xray-SSH/main/insshws/service-wsopenssh.txt && chmod +x /etc/systemd/system/ws-openssh.service

#System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service https://github.com/andristji/Xray-SSH/main/insshws/service-wsdropbear.txt && chmod +x /etc/systemd/system/ws-dropbear.service

#System SSL/TLS Websocket-SSH Python
wget -O /etc/systemd/system/ws-stunnel.service https://github.com/andristji/Xray-SSH/main/insshws/ws-stunnel.service.txt && chmod +x /etc/systemd/system/ws-stunnel.service

##System Websocket-OpenVPN Python
#wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/hidessh99/tuunnel-mx/main/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service

#restart service
#
systemctl daemon-reload

#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#Enable & Start ws-ovpn service
#systemctl enable ws-ovpn.service
#systemctl start ws-ovpn.service
#systemctl restart ws-ovpn.service
