require 'spec_helper_acceptance'

describe 'mosquitto' do
  context 'with default parameters' do
    let(:pp) do
      <<-PUPPET
      include mosquitto
      PUPPET
    end

    it 'runs successfully' do
      # Apply twice to ensure no errors the second time.
      apply_manifest(pp, catch_failures: true)
      apply_manifest(pp, catch_changes: true)
    end

    describe service('mosquitto') do
      it { is_expected.to be_running }
      it { is_expected.to be_enabled }
    end

    describe port(1883) do
      it { is_expected.to be_listening }
    end
  end
end
