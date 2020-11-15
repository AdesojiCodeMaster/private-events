require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  describe 'User registers' do
    it 'sign up user' do
      visit new_user_registration_path

      click_link 'Sign_up'

      fill_in 'Name', with: 'boo10je'
      fill_in 'Email', with: 'boo10je@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'
    end

    it 'log in user' do
      visit new_user_session_path

      fill_in 'Email', with: 'fpo9je@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
    end
  end
end
