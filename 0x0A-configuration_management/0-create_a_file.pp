#create a file with content

file { '/tmp/holberton':
  ensure  => file,
  path    => '/tmp/holberton',
  owner   => 'www-data',
  mode    => '0744',
  group   => 'www-data',
  content => 'I love Puppet'
}
