# Define a class for custom HTTP header configuration
class custom_http_response_header {

  # Define a fact to retrieve the hostname of the server
  $hostname = $facts['networking']['hostname']

  # Configure Nginx to include the custom HTTP header
  file { '/etc/nginx/conf.d/custom_headers.conf':
    ensure  => file,
    content => "add_header X-Served-By $hostname;"
  }

  # Notify the Nginx service to reload the configuration
  service { 'nginx':
    ensure  => running,
    require => File['/etc/nginx/conf.d/custom_headers.conf'],
    notify  => Service['nginx'],
  }
}

# Include the custom HTTP header configuration class
include custom_http_response_header

