require 'spec_helper'

describe 'balloons/edit' do
  let(:balloon) { Balloon.create!(name: 'Jorge') }

  before do
    assign(:balloon, balloon)
    render
  end

  subject { rendered }

  it { should match 'Edit Balloon' }

  specify { expect(view).to render_template(partial: 'balloons/_form') }
end
