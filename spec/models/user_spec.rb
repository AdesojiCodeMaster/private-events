require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Create a new user' do
    
    it 'it should create a user with both attributes' do
      x = User.new(name: 'Juan', email: 'juanu@example.com')
      expect(x.valid?).to eql(false)
    end
  end

end
