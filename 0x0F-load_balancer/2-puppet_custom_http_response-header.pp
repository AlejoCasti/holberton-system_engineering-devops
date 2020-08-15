# Script to install ngix and add redirect page

package { 'nginx':
  ensure => installed,
  name   => 'nginx',
}

exec { 'add header':
  provider => 'shell',
  command  => 'sed -i "s/root \/var\/www\/html;/root \/var\/www\/html;\n\tadd_header X-Served-By \$hostname;/" /etc/nginx/sites-available/default;service nginx start'
}