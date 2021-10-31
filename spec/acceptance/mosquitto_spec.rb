# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'mosquitto' do
  context 'with default parameters' do
    it_behaves_like 'an idempotent resource' do
      let(:manifest) { 'include mosquitto' }
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
