#
# @summary handle the Mosquitto configuration file
#
# @api private
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto::config (
  Array[String[1]] $config = $mosquitto::config,
) {
  assert_private()

  case $facts['os']['family'] {
    'FreeBSD': {
      $etc_prefix = '/usr/local/etc'
    }
    default: {
      $etc_prefix = '/etc'
    }
  }

  file { "${etc_prefix}/mosquitto/mosquitto.conf":
    ensure  => bool2str($mosquitto::package_ensure == 'absent', 'absent', 'file'),
    content => epp("${module_name}/mosquitto.conf", { 'config' => $config }),
  }
}
