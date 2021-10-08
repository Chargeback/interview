require 'rails_helper'

describe MediaController, type: :controller do
  describe '#search_by_user_id' do
    let!(:media){FactoryBot.create(:media)}
    it 'should return a media based on an id' do
      get :search_by_id, params: {id: media.id}
      expect(JSON.parse(response.body)).to eq(media.as_json)
    end
  end
  describe '#search_by_name' do
    let!(:media){FactoryBot.create(:media, name: 'blah')}
    it 'should return a media based on a name' do
      get :search_by_name, params: {name: media.name}
      expect(JSON.parse(response.body)).to eq(media.as_json)
    end
  end
end