require 'rails_helper'

feature 'User can sign out', %Q(

  As a user
  I want to sign in, then out
  So that I am not logged in anymore.

) do

  scenario 'user signs out' do
    user = FactoryGirl.create(:user)

    visit root_path
    click_link 'Sign in'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Sign in'

    click_on 'Sign out'

    expect(page).to have_content('Signed out successfully')
  end
end
