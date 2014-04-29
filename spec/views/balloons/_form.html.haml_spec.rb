require 'spec_helper'

describe 'balloons/_form' do
  let(:balloon) { Balloon.new }

  before do
    view.stub(:balloon) { balloon }
    render
  end

  subject { rendered }

  it { should have_selector 'form' }

  it 'has the necessary form fields' do
    expect(rendered).to have_selector "input[name='balloon[name]']"
    expect(rendered).to have_selector "input[name='balloon[color]']"
    expect(rendered).to have_selector "input[name='balloon[altitude]']"
    expect(rendered).to have_selector "input[name='balloon[location]']"
  end
end
