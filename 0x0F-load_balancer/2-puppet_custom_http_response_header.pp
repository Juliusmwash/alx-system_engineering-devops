# Configure loadbalancer using puppet
exec { 'configure_loadbalancer':
  provider => shell,
  command => 'git clone https://github.com/Juliusmwash/alx-system_engineering-devops.git ; mv alx-system_engineering-devops/0x0F-load_balancer/0-custom_http_response_header . ; rm -rf alx-system_engineering-devops ; sudo ./0-custom_http_response_header',
  path => '/usr/bin:/bin',
}

