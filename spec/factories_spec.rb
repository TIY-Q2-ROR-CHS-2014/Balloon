require 'spec_helper'

FactoryGirl.factories.map(&:name).each do |factory_name|
  describe "The #{factory_name} factory" do
    let(:factory) { build(factory_name) }
    it 'is valid' do
      expect(factory.valid?).to be_true, factory.errors.messages.inspect
    end
  end
end
