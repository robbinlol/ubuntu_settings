http_host=`gsettings get org.gnome.system.proxy.http host`
http_port=`gsettings get org.gnome.system.proxy.http port`

https_host=`gsettings get org.gnome.system.proxy.https host`
https_port=`gsettings get org.gnome.system.proxy.https port`

socks_host=`gsettings get org.gnome.system.proxy.socks host`
socks_port=`gsettings get org.gnome.system.proxy.socks port`

null="''"

if [ "$http_host" == "$null" ];then
    gsettings set org.gnome.system.proxy.http host 127.0.0.1
fi

if [ "$http_port" != 7890 ];then
    gsettings set org.gnome.system.proxy.http port 7890
fi

if [ "$https_host" == "$null" ];then
    gsettings set org.gnome.system.proxy.https host 127.0.0.1
fi

if [ "$https_port" == 0 ];then
    gsettings set org.gnome.system.proxy.https port 7890
fi

if [ "$socks_host" == "$null" ];then
    gsettings set org.gnome.system.proxy.socks host 127.0.0.1
fi

if [ "$socks_port" == 0 ];then
    gsettings set org.gnome.system.proxy.socks port 7891
fi