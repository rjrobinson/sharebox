require 'rails_helper'

feature 'a User can sign up'  do
  scenario 'A user signs up'do

    visit new_user_registration_path
    fill_in 'user_email', with: 'example@example.com'
    fill_in 'user_password', with: '123456789'
    fill_in 'user_password_confirmation', with: '123456789'

    click_on 'Sign up'

    #expect(page).to have_content('User created')
  end
end
