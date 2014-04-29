require 'spec_helper'

describe 'balloons/index' do
  let(:loon_link) { 'https://www.google.com/loon' }

  before do
    render
  end

  subject { rendered }

  it { should have_selector 'h2' }
  it { should have_link 'Loon page', href: loon_link }
  it { should have_link 'All Balloons', url_for(balloons_path) }
end
