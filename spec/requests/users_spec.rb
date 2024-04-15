require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe 'UserController#index' do
    context 'GET /users した時' do
      it 'ユーザー一覧を取得できる' do
        User.create(name: 'test', email: 'hoge@example.com')
        get 'http://localhost:3001/users', as: :json
        expect(response).to be_successful
      end
    end
  end
  
  describe 'UserController#create' do
    context 'POST /users した時' do
      it 'ユーザーを作成できる' do
        post 'http://localhost:3001/users',
             params: { name: 'test', email: 'hoge@example.com'}, as: :json
        expect(response).to be_successful
      end
    end
  end
end