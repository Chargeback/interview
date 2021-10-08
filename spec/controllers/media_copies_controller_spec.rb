require 'rails_helper'

describe MediaCopiesController, type: :controller do
  describe '#search_by_user_id' do
    let!(:media_copy){FactoryBot.create(:media_copy)}
    it 'should return a media based on an id' do
      get :search_by_id, params: {id: media_copy.id}
      expect(JSON.parse(response.body)).to eq(media_copy.as_json)
    end
  end
end