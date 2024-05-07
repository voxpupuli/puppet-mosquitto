# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v2.1.0](https://github.com/voxpupuli/puppet-mosquitto/tree/v2.1.0) (2024-05-07)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v2.0.0...v2.1.0)

**Implemented enhancements:**

- update puppet-systemd upper bound to 8.0.0 [\#54](https://github.com/voxpupuli/puppet-mosquitto/pull/54) ([TheMeier](https://github.com/TheMeier))
- Add Ubuntu 22.04 support [\#48](https://github.com/voxpupuli/puppet-mosquitto/pull/48) ([evgeni](https://github.com/evgeni))
- Add Debian 12 support [\#47](https://github.com/voxpupuli/puppet-mosquitto/pull/47) ([evgeni](https://github.com/evgeni))
- Add EL9 support [\#45](https://github.com/voxpupuli/puppet-mosquitto/pull/45) ([ekohl](https://github.com/ekohl))

**Merged pull requests:**

- Extend Readme to better describe the managed service [\#49](https://github.com/voxpupuli/puppet-mosquitto/pull/49) ([rwaffen](https://github.com/rwaffen))

## [v2.0.0](https://github.com/voxpupuli/puppet-mosquitto/tree/v2.0.0) (2023-10-20)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v1.2.0...v2.0.0)

**Breaking changes:**

- drop support for fedora 31 & 32 [\#42](https://github.com/voxpupuli/puppet-mosquitto/pull/42) ([jhoblitt](https://github.com/jhoblitt))
- drop support for debian 9 [\#40](https://github.com/voxpupuli/puppet-mosquitto/pull/40) ([jhoblitt](https://github.com/jhoblitt))
- drop support for ubuntu 16.04 [\#39](https://github.com/voxpupuli/puppet-mosquitto/pull/39) ([jhoblitt](https://github.com/jhoblitt))
- Drop Puppet 6 support [\#34](https://github.com/voxpupuli/puppet-mosquitto/pull/34) ([bastelfreak](https://github.com/bastelfreak))

**Implemented enhancements:**

- add support for fedora 37 & 38 [\#41](https://github.com/voxpupuli/puppet-mosquitto/pull/41) ([jhoblitt](https://github.com/jhoblitt))
- Allow puppet/systemd 5.x and 6.x [\#38](https://github.com/voxpupuli/puppet-mosquitto/pull/38) ([evgeni](https://github.com/evgeni))
- Add Puppet 8 support [\#37](https://github.com/voxpupuli/puppet-mosquitto/pull/37) ([bastelfreak](https://github.com/bastelfreak))
- puppetlabs/stdlib: Allow 9.x [\#36](https://github.com/voxpupuli/puppet-mosquitto/pull/36) ([bastelfreak](https://github.com/bastelfreak))

**Fixed bugs:**

- Fix FreeBSD support [\#32](https://github.com/voxpupuli/puppet-mosquitto/pull/32) ([evgeni](https://github.com/evgeni))

## [v1.2.0](https://github.com/voxpupuli/puppet-mosquitto/tree/v1.2.0) (2023-01-27)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v1.1.0...v1.2.0)

**Implemented enhancements:**

- bump puppet/systemd to \< 5.0.0 [\#30](https://github.com/voxpupuli/puppet-mosquitto/pull/30) ([jhoblitt](https://github.com/jhoblitt))

## [v1.1.0](https://github.com/voxpupuli/puppet-mosquitto/tree/v1.1.0) (2022-05-03)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v1.0.2...v1.1.0)

**Implemented enhancements:**

- Add Debian 11 support [\#11](https://github.com/voxpupuli/puppet-mosquitto/pull/11) ([bastelfreak](https://github.com/bastelfreak))

**Fixed bugs:**

- don't try to create config and systemd dropin for ensure absent [\#25](https://github.com/voxpupuli/puppet-mosquitto/pull/25) ([evgeni](https://github.com/evgeni))

## [v1.0.2](https://github.com/voxpupuli/puppet-mosquitto/tree/v1.0.2) (2021-11-13)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v1.0.1...v1.0.2)

**Merged pull requests:**

- Add tags to metadata.json [\#20](https://github.com/voxpupuli/puppet-mosquitto/pull/20) ([bastelfreak](https://github.com/bastelfreak))

## [v1.0.1](https://github.com/voxpupuli/puppet-mosquitto/tree/v1.0.1) (2021-08-26)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v1.0.0...v1.0.1)

**Merged pull requests:**

- Allow stdlib 8.0.0 [\#17](https://github.com/voxpupuli/puppet-mosquitto/pull/17) ([smortex](https://github.com/smortex))
- Use a shared example in acceptance testing [\#16](https://github.com/voxpupuli/puppet-mosquitto/pull/16) ([ekohl](https://github.com/ekohl))

## [v1.0.0](https://github.com/voxpupuli/puppet-mosquitto/tree/v1.0.0) (2021-07-25)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/v0.1.0...v1.0.0)

**Implemented enhancements:**

- Puppet 7 and fix iproute2 on Ubuntu/Debian acceptance tests [\#9](https://github.com/voxpupuli/puppet-mosquitto/pull/9) ([ehelms](https://github.com/ehelms))

**Fixed bugs:**

- start service only if network is really up [\#12](https://github.com/voxpupuli/puppet-mosquitto/pull/12) ([bastelfreak](https://github.com/bastelfreak))

**Merged pull requests:**

- puppetlabs/stdlib: Allow 7.x [\#14](https://github.com/voxpupuli/puppet-mosquitto/pull/14) ([bastelfreak](https://github.com/bastelfreak))
- require at least Puppet 6.1 [\#13](https://github.com/voxpupuli/puppet-mosquitto/pull/13) ([bastelfreak](https://github.com/bastelfreak))
- Fix style in README [\#8](https://github.com/voxpupuli/puppet-mosquitto/pull/8) ([ghoneycutt](https://github.com/ghoneycutt))
- Add a basic acceptance test [\#7](https://github.com/voxpupuli/puppet-mosquitto/pull/7) ([ehelms](https://github.com/ehelms))
- modulesync 3.0.0 & puppet-lint updates [\#4](https://github.com/voxpupuli/puppet-mosquitto/pull/4) ([bastelfreak](https://github.com/bastelfreak))

## [v0.1.0](https://github.com/voxpupuli/puppet-mosquitto/tree/v0.1.0) (2020-06-27)

[Full Changelog](https://github.com/voxpupuli/puppet-mosquitto/compare/c3e3912ab92ff3ee3de9bf9960ab021bac107b96...v0.1.0)

**Merged pull requests:**

- Add license badge to README.md [\#2](https://github.com/voxpupuli/puppet-mosquitto/pull/2) ([bastelfreak](https://github.com/bastelfreak))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
