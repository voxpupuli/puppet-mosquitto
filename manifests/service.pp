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
    service{'mosquitto':
      ensure => $ensure,
      name   => $service_name,
      enable => $enable,
    }
  }
}
