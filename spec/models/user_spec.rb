require 'rails_helper'

describe User do
  it { should validate_presence_of :first_name }
  
  it { should validate_presence_of :last_name }
  
  before :each do
   # @user = User.new(first_name: 'John', last_name: 'Smith')
    @user = create(:user)
  end
  
  describe 'full name' do
    it 'returns user full name' do
      
      expect(@user.full_name).to eq @user.first_name + ' ' + @user.last_name
    end
  end

  describe 'initials' do
    it 'returns user initials' do
  
      expect(@user.initials).to eq 'JS'
    end
  end
end
