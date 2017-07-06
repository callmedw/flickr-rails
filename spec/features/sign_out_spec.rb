require 'rails_helper'

describe "the sign out path" do
  it "signs out a user" do
    visit '/'
    click_link 'Login'
    click_on 'Sign up'
    expect(page).to have_content 'Register'
    fill_in 'Email', with: 'mycoolemail@gmail.com'
    fill_in 'Password', with: 'mycoolpass'
    fill_in 'Password confirmation', with: 'mycoolpass'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
    click_on 'Logout'
    expect(page).to have_content 'Signed out successfully.'

  end
end
