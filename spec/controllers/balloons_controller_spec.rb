require 'spec_helper'

describe BalloonsController do
  let(:balloon) { Balloon.create!(name: 'Ted') }

  subject { response }

  describe 'GET #index' do
    it 'does not break' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'GET #new' do
    before do
      get :new
    end

    it 'instantiates a new Balloon object' do
      expect(assigns(:balloon).new_record?).to be_true
      expect(assigns(:balloon).class).to eq Balloon
    end

    it { should be_success }
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'successfully creates balloon' do
        expect {
          post :create, balloon: { name: 'Boberino' }
        }.to change(Balloon, :count).by(1)
        expect(response).to redirect_to balloons_path
      end
    end

    context 'with INvalid attributes' do
      it 'does not create a balloon and redirects' do
        expect {
          post :create, balloon: { name: nil }
        }.to_not change(Balloon, :count)
        expect(response).to render_template :new
      end
    end
  end

  describe 'GET #edit' do
    before do
      get :edit, id: balloon
    end

    it 'assigns the balloon variable' do
      expect(assigns(:balloon)).to eq balloon
      expect(response).to be_success
    end
  end
end
