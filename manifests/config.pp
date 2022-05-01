# @summary handle the Mosquitto configuration file
#
# @api private
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto::config (
  Array[String[1]] $config = $mosquitto::config,
  $prefix                  = undef
) {
  assert_private()
  # Sensible defaults for the config prefix if none is specified
  unless $prefix{
    case $facts['os']['name'] {
      'FreeBSD': {
        $config_prefix = '/usr/local/etc'
      }
      'CentOS', 'Fedora', 'Debian', 'Ubuntu': {
        $config_prefix = '/etc'
      }
      default: {
        warning("Unsupported Platform: ${facts['os']['name']}, Using /etc")
        $config_prefix = '/etc'
      }
    }
  }

  $config_file = "${config_prefix}/mosquitto/mosquitto.conf"

  file { $config_file:
    ensure  => 'file',
    content => epp("${module_name}/mosquitto.conf", { 'config' => $config }),
  }
}
