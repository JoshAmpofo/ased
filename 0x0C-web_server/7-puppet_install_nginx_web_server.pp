# This manifest will install nginx on a server and configure the 301-redirect

package { 'nginx':
  ensure => installed,
  }

file_line { 'configure 301-redirect page':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  }

# add the line 'Hello World!' when nginx is queried using GET request
file { '/var/www/html/index.html':
  content => 'Hello World!',
  }

# restart nginx service afer config
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
  }
