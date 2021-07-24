#
# @summary handles the Mosquitto service
#
# @api private
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto::service (
  Boolean $manage_service = $mosquitto::manage_service,
  Stdlib::Ensure::Service $ensure = $mosquitto::service_ensure,
  Boolean $enable = $mosquitto::service_enable,
  String[1] $service_name = $mosquitto::service_name,
) {
  assert_private()

  if $manage_service {
    service { 'mosquitto':
      ensure => $ensure,
      name   => $service_name,
      enable => $enable,
    }
    # patch the unit file to ensure mosquitto starts after the network is up
    $content = @(EOT)
      # THIS FILE IS MANAGED BY PUPPET
      [Unit]
      Requires=network-online.target
      After=network-online.target
      | EOT

    systemd::dropin_file { 'mosquitto-override.conf':
      unit           => 'mosquitto.service',
      content        => $content,
      notify_service => true,
    }
  }
}
