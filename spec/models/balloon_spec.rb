require 'spec_helper'

describe Balloon do
  let(:balloon) { Balloon.new(name: 'Joe') }

  subject { balloon }

  it { should be_valid }

  context 'validations' do
    let(:balloon) { Balloon.new }

    it { should_not be_valid }
  end
end
