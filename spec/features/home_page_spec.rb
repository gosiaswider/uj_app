feature 'home page' do
  describe 'user visit home page', type: :feature do
    it 'use see home page' do
      visit '/'
      
      expect(page).to have_content('My first aplication in Ruby')
    end
  end
end
