# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix_for_nginx':
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin:/bin',
  onlyif  => '/bin/grep -q "ULIMIT=4096" /etc/default/nginx',
  notify  => Exec['nginx_restart'],
}

# Restart Nginx
exec { 'nginx_restart':
  command     => '/etc/init.d/nginx restart',
  path        => ['/usr/local/sbin', '/usr/local/bin', '/sbin', '/bin', '/usr/sbin', '/usr/bin'],
  refreshonly => true,
}

