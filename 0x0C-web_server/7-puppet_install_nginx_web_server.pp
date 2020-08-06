#Setting server

package { 'nginx':
  ensure => installed,
  name   => 'nginx',
}

file { '/var/www/html/index.html':
  content => 'Holberton School',
  path    => '/var/www/html/index.html'
}

exec { '301 value and start server':
  provider => 'shell',
  command  => 'sed -i "s/root \/var\/www\/html;/root \/var\/www\/html;\n\trewrite ^\/redirect_me http:\/\/google.com permanent;/" /etc/nginx/sites-available/default ; service nginx start'
}

