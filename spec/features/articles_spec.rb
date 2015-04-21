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
    
    it 'user create a new article' do
    visit articles_path

    click_link('New article')

    expect(page).to have_content('You are not authorized to access this page.')
    expect(page).not_to have_content(@article.title)
    expect(page.current_url).to eq 'http://www.example.com/'
 end
 end
end