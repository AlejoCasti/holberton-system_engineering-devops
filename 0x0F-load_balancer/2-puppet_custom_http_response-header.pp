# Script to install ngix and add redirect page

package { 'nginx':
  ensure => installed,
  name   => 'nginx',
}

file_line { 'title':
  ensure   => present,
  path     => '/etc/nginx/sites-available/default',
  after    => 'server_name _;',
  line     => 'add_header X-Served-By $hostname;',
  multiple => true
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}