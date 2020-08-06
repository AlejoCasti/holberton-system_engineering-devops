#!/usr/bin/env bash
#Setting server

exec { 'install nginx':
  provider => 'shell',
  command  => 'apt-get -y update ; apt-get -y install nginx'
}


exec { 'create index.html':
  provider => 'shell',
  command  => 'echo "Holberton School" > /var/www/html/index.html'
}

exec { '301 value and start server':
  provider => 'shell',
  command  => 'sed -i "s/root \/var\/www\/html;/root \/var\/www\/html;\n\trewrite ^\/redirect_me http:\/\/google.com permanent;/" /etc/nginx/sites-available/default ; service nginx start'
}

