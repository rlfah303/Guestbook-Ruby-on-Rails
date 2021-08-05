require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  
  test "Signing up" do
    visit signup_path
    
    fill_in "Name", with:"Test"
    fill_in "Email", with:"test@account.com"
    fill_in "Password", with:"secret"
    fill_in "Confirm Password", with:"secret"
    
    click_on "Create User"
    assert_text "Account Created"
    assert_selector "nav", text: "Logout"
    refute_selector "nav", text: "Login"
  end
  
  test "Login with user" do
    user = login_user
    # user = FactoryBot.create :user, email: "test@account.com", password: "secret"
    
    # visit login_path
    # fill_in "Email", with:"test@account.com"
    # fill_in "Password", with:"secret"
    
    # click_on "Login"
    assert_selector "h1", text: "Welcome to Gilmo's Portfolio"
    assert_text "Logged In"
    assert_selector "nav", text: "Logout"
    refute_selector "nav", text: "Login"
  end
  

  
end
