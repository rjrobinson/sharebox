require 'rails_helper'

feature 'a User can sign up'  do
  scenario 'A user signs up'do

    visit new_user_registration_path
    save_and_open_page
    fill_in 'Email', with: 'example@example.com'
    fill_in 'Password', with: '123456789'
    fill_in 'Password confirmation', with: '123456789'

    click_on 'Create user'
    expect(page).to have_content('User created')
  end
end
