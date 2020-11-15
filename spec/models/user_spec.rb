require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Create a new user' do
    it "it should create a user without name for it's not necessary" do
      x = User.new(email: 'doje@yahoo.com')
      expect(x.valid?).to eq(false)
    end
    it "it should create a user without email for it's not necessary" do
      x = User.new(name: 'doje')
      expect(x.valid?).to eq(false)
    end
    it 'it should create a user without both name and email for they are not necessary' do
      x = User.new(name: 'doje', email: 'doje@yahoo.com')
      expect(x.valid?).to eq(false)
    end
  end
end
