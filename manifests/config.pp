#
# @summary handle the Mosquitto configuration file
#
# @api private
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto::config (
  Array[String[1]] $config = $mosquitto::config,
){

  assert_private()

  file{'/etc/mosquitto/mosquitto.conf':
    ensure  => 'file',
    content => epp("${module_name}/mosquitto.conf", { 'config' => $config}),
  }
}
