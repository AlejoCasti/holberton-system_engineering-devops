#kill a process

exec { "pkill killmenow":
     path     => '/usr/bin/',
     provider => 'shell',
     command  => 'pkill -9 killmenow'
}