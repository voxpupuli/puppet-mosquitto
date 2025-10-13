if $facts['os']['family'] == 'RedHat' and $facts['os']['name'] != 'Fedora' {
  # Mosquitto is packaged in EPEL
  $epel_name = $facts['os']['name'] == 'OracleLinux' ? {
    true    => "oracle-epel-release-el${$facts['os']['release']['major']}",
    default => "epel-release",
  }
  package { $epel_name:
    ensure => installed,
  }
}

if $facts['os']['name'] == 'Fedora' {
  # For serverspec
  package { 'iproute':
    ensure => installed,
  }
}
