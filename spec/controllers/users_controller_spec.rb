require 'rails_helper'

describe UsersController, type: :controller do
  describe '#current_checkouts' do
    let!(:user){FactoryBot.create(:user)}
    let!(:media_checkout){FactoryBot.create(:media_checkout)}
    let!(:media_checkout2){FactoryBot.create(:media_checkout)}
    it 'should get the current checked out media' do
      get :current_checkouts, params: {id: user.id}
      expect(JSON.parse(response.body)).to eq(media_checkout.as_json)
    end
  end
  describe '#all_checkouts' do
    let!(:user){FactoryBot.create(:user)}
    let!(:media_checkout){FactoryBot.create(:media_checkout)}
    let!(:media_checkout2){FactoryBot.create(:media_checkout)}
    it 'should get all checkout out history media' do
      get :all_checkouts, params: {id: user.id}
      expect(JSON.parse(response.body)).to eq(media_checkout.as_json)
    end
  end
  describe '#checkouts_by_book_name' do
    let!(:user){FactoryBot.create(:user)}
    let!(:media_checkout){FactoryBot.create(:media_checkout)}
    let!(:media_checkout2){FactoryBot.create(:media_checkout)}
    it 'should checkouts based on book name' do
      get :checkouts_by_book_name, params: {id: user.id}
      expect(JSON.parse(response.body)).to eq(media_checkout.as_json)
    end
  end
  describe '#overdue_checkouts' do
    let!(:user){FactoryBot.create(:user)}
    let!(:media_checkout){FactoryBot.create(:media_checkout)}
    let!(:media_checkout2){FactoryBot.create(:media_checkout)}
    it 'should overdue checkouts' do
      get :overdue_checkouts, params: {id: user.id}
      expect(JSON.parse(response.body)).to eq(media_checkout.as_json)
    end
  end
end