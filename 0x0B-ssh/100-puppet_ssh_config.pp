# This manifest will makes changes to ssh_config file

include stdlib

file_line { 'Refuse password authentication':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
  }

file_line { 'Set private key':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => true,
  }
