
#!/bin/bash
cd /root/SDA_ALL/
rm -rf site_5
# cd /root/SDA_ALL/48_firefox/
git reset --hard
git pull
cd
export USER="root"
export PASSWORD="123123123"
echo "0000000000++++00000000000000000000000000001111111111111111111111111111111111111"
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >  /etc/resolv.conf
#touch /root/.Xauthority
mkdir -p /root/.vnc/
echo $PASSWORD | vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd
### create VNC configuration file
echo "

" > /root/.vnc/config


cat <<EOF > /root/.vnc/config
rfbport=5901
depth=24
geometry=1360x768
EOF


# sudo vncserver


#######################################################
sudo vncserver
sleep 8
sudo vncserver -kill :1

pkill Xtightvnc


mv /root/.vnc/xstartup /root/.vnc/xstartup.bak
cat <<EOF > /root/.vnc/xstartup
#!/bin/bash
xrdb /root/.Xresources
autocutsel -fork
startxfce4 &
EOF
chmod +x /root/.vnc/xstartup

touch /root/.Xresources

# sudo  vncserver -localhost  -depth 24 -geometry 1360x768 :1
sleep 2
sudo vncserver -kill :1

pkill Xtightvnc



# sudo  vncserver -localhost  -depth 24 -geometry 1360x768 :1


# python3 -m websockify --web /usr/share/novnc/utils/../ 6080 localhost:5901 &
#websockify -D --web=/usr/share/novnc/  6901 localhost:5901
# cp /root/.Xauthority /headless/.Xauthority
/root/install/tun_setup.sh
echo "d########################  eaomndd ###########################"

systemctl enable supervisor.service
systemctl enable vncserver@1.service
systemctl daemon-reload
systemctl start vncserver@1
systemctl start supervisor
# git -C root/moya/ pull

# cd 48_firefox/
# bash ./l1.sh &
echo "lol" > /root/go
hostname
hh_n=`hostname`

# host_name = ${hh_n: -1}
host_name=`echo -n $HOSTNAME |tail -c 1`
echo $host_name

case $host_name in
  6 )
    echo -n "host--6"
    echo "host--6" > /root/go
    echo -e "GWaURqBcXMjHyuExDTEAtVR1\n9JSemjxgWvxHUB7cXw9xrWQs"  > /root/SDA_ALL/site_5/nord_pass.txt
    ;;
  Romania | 5)
    echo -n "5-Romanian"
    echo -e "GWaURqBcXMjHyuExDTEAtVR1\n9JSemjxgWvxHUB7cXw9xrWQs" > /root/SDA_ALL/site_5/nord_pass.txt
    ;;
  4)
    echo -n "4-Romanian"
    echo -e "PJuBxB6Vqw2YFRjW1drY8a2W\nP32ranMFwgTUoMkU6ccBzM7U"> /root/SDA_ALL/site_5/nord_pass.txt
    ;;
  3)
    echo -n "3-Romanian"
    echo -e "2kNBg2t9FHQr6u5PELiikBKj\nofaUXmxKfWFZjTURnMRCDoxd"  > /root/SDA_ALL/site_5/nord_pass.txt
    ;;
  2)
    echo -n "2-Romanian"
    echo -e "bEtG92gMb834nmkoKonVxDam\nXPbuFmdVhjQSExwGEuzGaQ9a" > /root/SDA_ALL/site_5/nord_pass.txt
    ;;
  1)
    echo -n "1-Romanian"
    #echo -e "byJpsYp2LoBnceFkYBg1BWRH\nTsUpTFjhQVFjTn3mQDi47JgC" > /root/SDA_ALL/site_5/nord_pass.txt
    echo -e "r9ALwcyVetNrvq9xHSuNuQGg\nDTSfshiZ98S6Y6iPx99iKnY8" > /root/SDA_ALL/site_5/nord_pass.txt
    ;;
esac

# cd /root/SDA_ALL/
# # cd /root/SDA_ALL/48_firefox/
# git reset --hard
# git pull
cat /root/SDA_ALL/site_5/nord_pass.txt
cat /root/go
echo "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"

###########################################
# /usr/bin/supervisord -n
# 48_firefox/