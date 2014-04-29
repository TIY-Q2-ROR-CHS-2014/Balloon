require 'spec_helper'

describe 'balloons/new' do
  let(:balloon) { Balloon.new }

  before do
    assign(:balloon, balloon)
    render
  end

  subject { rendered }

  it { should match 'New Balloon' }

  specify { expect(view).to render_template(partial: 'balloons/_form') }
end
