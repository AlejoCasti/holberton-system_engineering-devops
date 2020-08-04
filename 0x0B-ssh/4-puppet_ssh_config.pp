#changes to our configuration

file_line { 'change passwordAuthentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  match  => '^PasswordAuthentication'
}