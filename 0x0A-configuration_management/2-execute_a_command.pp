#kill a process

exec { "kill_process":
     provider => 'shell'
     command  => 'pkill -9 killmenow'
}