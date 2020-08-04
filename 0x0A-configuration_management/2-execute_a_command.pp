#kill a process

exec { 'pkill killmenow':
     path     => '/usr/bin/',
     command  => 'pkill -x killmenow'
}