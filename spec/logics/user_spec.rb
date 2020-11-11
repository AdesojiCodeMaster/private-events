require 'rails_helper'

feature 'User registers' do
  scenario 'with valid details' do
    visit '/'

    click_link 'Sign_up'
    expect(current_path).to eq(new_user_registration_path)

    fill_in 'Name', with: 'Juan'
    fill_in 'Email', with: 'tester@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    click_link 'Log_in'
    expect(current_path).to eq new_user_session_path

    fill_in 'Email', with: 'juan@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    expect(current_path).to eq '/'
    expect(page).to have_content 'Signed in successfully.'
  end
end
