require 'rails_helper'

feature 'articles' do
  describe 'user visit articles page', type: :feature do
    before :each do
     @article = create(:article)
     @second_article = create(:article)
    end
   it 'use see list of articles' do
   visit articles_path

   expect(page).to have_content(@article.title)
   expect(page).to have_content(@second_article.title)
     expect(page).to have_content('Listing Articles')
   end
 end
end