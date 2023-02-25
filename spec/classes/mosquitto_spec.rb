# frozen_string_literal: true

require 'spec_helper'

describe 'mosquitto' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let :facts do
        facts
      end

      let :etc_prefix do
        case facts[:os]['family']
        when 'FreeBSD'
          '/usr/local/etc'
        else
          '/etc'
        end
      end

      context 'with all defaults' do
        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_class('mosquitto') }
        it { is_expected.to contain_class('mosquitto::service') }
        it { is_expected.to contain_class('mosquitto::install') }
        it { is_expected.to contain_class('mosquitto::config') }
        it { is_expected.to contain_service('mosquitto') }
        it { is_expected.to contain_package('mosquitto') }
        it { is_expected.to contain_file("#{etc_prefix}/mosquitto/mosquitto.conf") }

        case facts[:os]['family']
        when 'FreeBSD'
          it { is_expected.not_to contain_systemd__dropin_file('mosquitto-override.conf') }
        else
          it { is_expected.to contain_systemd__dropin_file('mosquitto-override.conf').with_ensure('present') }
        end
      end

      context 'with ensure => absent' do
        let :params do
          {
            package_ensure: 'absent',
            service_ensure: 'stopped',
            service_enable: false
          }
        end

        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_class('mosquitto') }
        it { is_expected.to contain_service('mosquitto').with_ensure('stopped') }
        it { is_expected.to contain_package('mosquitto').with_ensure('absent') }
        it { is_expected.to contain_file("#{etc_prefix}/mosquitto/mosquitto.conf").with_ensure('absent') }

        case facts[:os]['family']
        when 'FreeBSD'
          it { is_expected.not_to contain_systemd__dropin_file('mosquitto-override.conf') }
        else
          it { is_expected.to contain_systemd__dropin_file('mosquitto-override.conf').with_ensure('absent') }
        end
      end
    end
  end
end
