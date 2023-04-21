# This manifest will execute a unix command to terminate a file

exec { 'killmenow':
  command => 'pkill killmenow',
  path    => '/bin:/usr/bin',
  onlyif  => 'pgrep killmenow',
  }
