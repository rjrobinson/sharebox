require 'rails_helper'

describe User do
  it 'can sign up' do
    user = FactoryGirl.create(:user)

    visit 'new_user_registration'
    fill_in email, with: user.email
    fill_in password, with: user.password

    click_on 'Create user'
    expect(page).to have_content('User created')
  end
end
