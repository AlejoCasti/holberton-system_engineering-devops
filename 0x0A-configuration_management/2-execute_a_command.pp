#kill a process

exec { "pkill killmenow":
     path     => '/usr/bin/',
     command  => 'pkill -9 killmenow'
}