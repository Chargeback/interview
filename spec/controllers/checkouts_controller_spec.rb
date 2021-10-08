require 'rails_helper'

describe CheckoutsController, type: :controller do
  describe '#search_by_user_id' do
    let!(:checkout){FactoryBot.create(:checkout)}
    it 'should return a checkout based on an id' do
      expectation = {
        id: checkout.id
      }
      get :search_by_user_id
      expect(JSON.parse(response.body)).to eq(expectation)
    end
  end
end