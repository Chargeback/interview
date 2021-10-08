require 'rails_helper'

describe CheckoutsController, type: :controller do
  describe '#search_by_user_id' do
    let!(:checkout){FactoryBot.create(:checkout)}
    let!(:user){FactoryBot.create(:user)}
    it 'should return a checkout based on an id' do
      get :search_by_user_id, params: {user_id: user.id}
      expect(JSON.parse(response.body)).to eq(checkout.as_json)
    end
  end

  describe '#create' do
    let!(:checkout){FactoryBot.create(:checkout)}
    let!(:media_copy){FactoryBot.create(:media_copy)}
    let!(:user){FactoryBot.create(:user)}
    it 'should create a checkout from a post body' do
      body = {
        media_copy_id: media_copy.id,
        user_id: user
      }
      expect do
        post :create, params: body
      end.to change{Checkout.count}.by(1)
    end
  end
end