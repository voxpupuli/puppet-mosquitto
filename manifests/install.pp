#
# @summary Install mosquitto
#
# @api private
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto::install (
  Boolean $manage_package = $mosquitto::manage_package,
  Enum['latest', 'absent', 'present'] $ensure = $mosquitto::package_ensure,
  String[1] $package_name = $mosquitto::package_name,
) {

  assert_private()

  if $manage_package {
    package{'mosquitto':
      ensure => $ensure,
      name   => $package_name,
    }
  }
}
