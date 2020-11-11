require 'rails_helper'
require 'date'

feature 'Create Event' do
  describe 'Create a new event' do
    it 'It should create a new event successfully' do
      # create a new event
      visit new_event_path
      fill_in 'Name', with: 'Birthday'
      fill_in 'Description', with: 'Bash'
      fill_in 'Location', with: 'Colombia'
      fill_in 'Date', with: Date.today
      expect(page).to have_content(//)
    end
  end
end
