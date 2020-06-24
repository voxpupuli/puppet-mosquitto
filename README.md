# Mosquitto module for Puppet

[![Build Status](https://travis-ci.org/voxpupuli/puppet-mosquitto.png?branch=master)](https://travis-ci.org/voxpupuli/puppet-mosquitto)
[![Code Coverage](https://coveralls.io/repos/github/voxpupuli/puppet-mosquitto/badge.svg?branch=master)](https://coveralls.io/github/voxpupuli/puppet-mosquitto)
[![Puppet Forge](https://img.shields.io/puppetforge/v/puppet/mosquitto.svg)](https://forge.puppetlabs.com/puppet/mosquitto)
[![Puppet Forge - downloads](https://img.shields.io/puppetforge/dt/puppet/mosquitto.svg)](https://forge.puppetlabs.com/puppet/mosquitto)
[![Puppet Forge - endorsement](https://img.shields.io/puppetforge/e/puppet/mosquitto.svg)](https://forge.puppetlabs.com/puppet/mosquitto)
[![Puppet Forge - scores](https://img.shields.io/puppetforge/f/puppet/mosquitto.svg)](https://forge.puppetlabs.com/puppet/mosquitto)

## ToC

* [Description](#description)
* [License](#license)
* [Development and Contribution](#development-and-contribution)
* [Authors](#authors)

## Description

This module configures the mosquitto service. The default configuration allows anonymous access. It works simply with:

```puppet
include mosquitto
```

All parameters are documented in the REFERENCE.md. You can pass configuration options with:

```puppet
class{'mosquitto:
  config => [
  'acl_file foobar.acl',
  'bridge_insecure false',
  ]
}
```

## License

This project is licensed under AGPL-3. A license file is in the document root of this repository.

## Development and Contribution

This project contains tests for [rspec-puppet](http://rspec-puppet.com/).

Quickstart to run all linter and unit tests:

```bash
bundle install --path .vendor/ --without system_tests --without development --without release
bundle exec rake test
```

Detailed information about the test setup and contributions are in the CONTRIBUTING.md in the `.github/` directory.

## Authors

puppet-mosquitto is maintained by [Vox Pupuli](https://voxpupuli.org), it was written by [Tim 'bastelfreak' Meusel](https://github.com/bastelfreak).
