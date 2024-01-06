case $facts['os']['name'] {
  'CentOS': {
    # Mosquitto is packaged in EPEL
    package { 'epel-release':
      ensure => installed,
    }
  }
  'Fedora': {
    # For serverspec
    package { 'iproute':
      ensure => installed,
    }
  }
  default: {}
}
