require 'rails_helper'

describe ArticlesController do
  describe 'index' do
    it 'return articles' do
      article = create(:article)
      get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).length).to eq 1
    end
  end
end