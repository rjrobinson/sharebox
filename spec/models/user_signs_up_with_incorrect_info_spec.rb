require 'rails_helper'

feature 'a User can sign up'  do
  scenario 'A user signs up'do

    visit new_user_registration_path
    fill_in 'Email', with: 'example@example.com'

    click_button 'Sign up'
    expect(page).to have_content("Passwordcan't be blank")
  end
end
