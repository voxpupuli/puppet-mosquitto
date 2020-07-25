#
# @summary Puppet module to manage the Eclipe Mosquitto MQTT server
#
# @param manage_package Boolean to enable/disable package handling
# @param manage_service Boolean to enable/disable service handling
# @param package_ensure ensure attribute for the package resource
# @param package_name Name of the Mosquitto package
# @param service_name Name of the Mosquitto service
# @param service_enable wether the service should be in autostart or not
# @param config list of config options for Mosquitto
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto (
  Boolean $manage_package                             = true,
  Boolean $manage_service                             = true,
  Enum['latest', 'absent', 'present'] $package_ensure = 'present',
  String[1] $package_name                             = 'mosquitto',
  Stdlib::Ensure::Service $service_ensure             = 'running',
  Boolean $service_enable                             = true,
  String[1] $service_name                             = 'mosquitto',
  Array[String[1]] $config                            = [],
) {
  contain mosquitto::install
  contain mosquitto::config
  contain mosquitto::service

  Class['mosquitto::install']
  -> Class['mosquitto::config']
  ~> Class['mosquitto::service']
}
