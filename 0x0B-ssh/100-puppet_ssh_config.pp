# This manifest will makes changes to ssh_config file

file { '/etc/ssh/ssh_config':
  content => '
    Host *
		HostName 54.197.44.5
		User ubuntu
		IdentityFile ~/.ssh/school
		PasswordAuthentication no',
    }
