require 'spec_helper'

describe 'mosquitto' do
  on_supported_os.each do |os, facts|
    context "on #{os} " do
      let :facts do
        facts
      end

      context 'with all defaults' do

        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_class('mosquitto') }
        it { is_expected.to contain_class('mosquitto::service') }
        it { is_expected.to contain_class('mosquitto::install') }
        it { is_expected.to contain_class('mosquitto::config') }
        it { is_expected.to contain_service('mosquitto') }
        it { is_expected.to contain_package('mosquitto') }
        it { is_expected.to contain_file('/etc/mosquitto/mosquitto.conf') }
      end
    end
  end
end
