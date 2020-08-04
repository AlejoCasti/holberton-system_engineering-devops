#kill a process

exec { "kill_process":
     command => 'pkill -9 killmenow'
}