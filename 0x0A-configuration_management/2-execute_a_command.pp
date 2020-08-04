#kill a process

exec { "pkill killmenow":
     provider => 'shell',
     command  => 'pkill -9 killmenow'
}