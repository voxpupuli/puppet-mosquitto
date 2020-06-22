#
# @summary handle the Mosquitto configuration file
#
# @api private
#
# @author Tim Meusel <tim@bastelfreak.de>
#
class mosquitto::config (

){

  assert_private()

  file{'/etc/mosquitto/mosquitto.conf':
    ensure  => 'file',
    content => epp("${module_name}/mosquitto.conf"),
  }
}
