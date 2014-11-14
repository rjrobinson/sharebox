require 'rails_helper'

feature 'user may upload file', %Q(
  As an authenticated user
  I want to be able to upload a file
  So that I can post items to my folders
) do

  scenario 'user signs in and uploads file' do
    user = FactoryGirl.create(:user)

    visit root_path
    click_link 'Sign in'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    visit new_asset_path
    
    attach_file(field, File.expand_path(path))
    #
    save_and_open_page
    #
    click_on 'New Asset'
  end
end
