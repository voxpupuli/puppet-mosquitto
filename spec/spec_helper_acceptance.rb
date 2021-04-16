# This file is completely managed via modulesync
require 'voxpupuli/acceptance/spec_helper_acceptance'

configure_beaker do |host|
  case fact_on(host, 'operatingsystem')
  when 'CentOS'
    host.install_package('epel-release')
  end

  host.install_package('iproute')
end
