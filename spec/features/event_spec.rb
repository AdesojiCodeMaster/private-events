require 'rails_helper'

RSpec.feature 'Events', type: :feature do # rubocop:disable Metrics/BlockLength
  describe 'Create a new event' do
    it 'It should create a new event successfully' do
      # create a new event
      visit new_event_path

      fill_in 'Name', with: 'dirthday'
      fill_in 'Description', with: 'dash'
      fill_in 'Location', with: 'dolombia'
      fill_in 'Date', with: Date.today
      find("input[name ='commit']").click
    end
  end

  describe 'Attend an event' do
    it 'it should show events attending by an attendee' do
      visit events_path

      Event.all.each do |event|
        event.name = 'dirthday'
        event.description = 'dash'
        event.location = 'dolombia'
        event.date = DateTime.now
        event.creator = @user
      end
    end
  end

  describe 'All event page' do
    it 'it should show all created events' do
      visit root_path
      Event.all.each do |event|
        event.name = 'dirthday'
        event.description = 'dash'
        event.location = 'dolombia'
        event.date = DateTime.now
        event.creator = @user
      end
    end
  end
end
