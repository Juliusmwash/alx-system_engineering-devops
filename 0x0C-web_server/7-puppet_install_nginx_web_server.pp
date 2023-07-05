# Installs a Nginx server

exec {'configure_server':
  provider => shell,
  command => 'git clone https://github.com/Juliusmwash/alx-system_engineering-devops.git ; mv alx-system_engineering-devops/0x0C-web_server/1-install_nginx_web_server . ; mv alx-system_engineering-devops/0x0C-web_server/4-not_found_page_404 . ; ./1-install_nginx_web_server ; ./4-not_found_page_404',
  path => '/usr/bin:/bin:/path/to',
}
