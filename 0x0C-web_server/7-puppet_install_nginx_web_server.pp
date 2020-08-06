#!/usr/bin/env bash
#Setting server

exec { 'Server':
  provider => 'shell',
  command  => 'apt-get -y update ; apt-get -y install nginx ; echo "Holberton School" > /var/www/html/index.html ;  sed -i 's/root \/var\/www\/html;/root \/var\/www\/html;\n\trewrite ^\/redirect_me http:\/\/google.com permanent;/' /etc/nginx/sites-available/default ; service nginx start'
}