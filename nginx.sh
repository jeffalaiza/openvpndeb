#!/bin/bash
apt-get install -y nginx
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
cp ~/openvpndeb/nginx.conf /etc/nginx/nginx.conf
rm /etc/nginx/conf.d/*.conf
cp ~/openvpndeb/ocs.conf /etc/nginx/conf.d/
service nginx restart
rm -Rf ~/openvpndeb/