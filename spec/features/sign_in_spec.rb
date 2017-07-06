require 'rails_helper'

describe "the sign up path" do
  it "adds a new user" do
    visit '/'
    click_link 'Login'
    click_on 'Sign up'
    expect(page).to have_content 'Register'
    fill_in 'Email', with: 'mycoolemail@gmail.com'
    fill_in 'Password', with: 'mycoolpass'
    fill_in 'Password confirmation', with: 'mycoolpass'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
