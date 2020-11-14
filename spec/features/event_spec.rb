require 'rails_helper'

RSpec.feature "Events", type: :feature do
   describe 'Create a new event' do
      
      it 'It should create a new event successfully' do
        # create a new event
        visit new_event_path
        fill_in 'Name', with: 'dirthday'
        fill_in 'Description', with: 'dash'
        fill_in 'Location', with: 'dolombia'
        fill_in 'Date', with: Date.today
        expect(page).to have_content(//)
      end
    end
  
   describe 'Attend an event' do
   it 'it should show event attending by an attendee' do
   visit events_path
  
   Event.all.each do |event|
   event.name = 'dirthday'
   event.description = 'dash'
   event.location = 'dolombia'
   event.date = DateTime.now
   event.creator.name = 'doje'
   find_link('Show Event')
   find_link('Attend Event')
   click_link 'Attend Event'
   end   
   expect(page).to have_text(//)
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
    event.creator.name = 'doje'
    find_link('Show Event')
    find_link('Attend Event')
    end   
    expect(page).to have_text(//)
    end
    end
  end
  
  

