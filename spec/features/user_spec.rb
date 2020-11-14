require 'rails_helper'

RSpec.feature "Users", type: :feature do
  describe "User registers" do
  
    it 'sign up user' do
    
    visit new_user_registration_path
    
    click_link "Sign_up"
    
    fill_in "Name", with: "fp010je"
    fill_in "Email", with: "fpo10je@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_text 'Welcome! You have signed up successfully.'
    click_button 'Logout'
    end

    it 'log in user' do 
    
    visit new_user_session_path 
      
    fill_in "Email", with: "fpo9je@example.com"
    fill_in "Password", with: "password"
    click_button 'Log in'
    expect(page).to have_text 'Signed in successfully.'
    click_button 'Logout'
    end
  end
end
    
  

