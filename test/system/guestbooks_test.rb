require "application_system_test_case"

class GuestbooksTest < ApplicationSystemTestCase
  test "index page shows all guestbooks" do
    user = login_user
    guestbook1 =FactoryBot.create :guestbook, user:user
    guestbook2 =FactoryBot.create :guestbook, user:user
    
    visit guestbooks_path
    
    assert_text guestbook1.title
    assert_text guestbook2.title
  
    assert_selector "h1", text: "Guestbooks"
  end
  test "show one guestbook" do
    user = login_user
    guestbook =FactoryBot.create :guestbook, user:user
    visit guestbook_path(guestbook)
    
    assert_text guestbook.title
  end
  test "edit one guestbook" do
    user = login_user
    guestbook =FactoryBot.create :guestbook, user:user
    visit edit_guestbook_path(guestbook)
    
    fill_in "Title", with:"Test_edited"
    fill_in "Content", with:"TestC_edited"
    fill_in "Date", with:"edit_date"
    click_on "Update Guestbook"
    assert_text "Updated"
  end
  
  test "delete one guestbook" do
    user = login_user
    guestbook =FactoryBot.create :guestbook, user:user
    visit guestbook_path(guestbook)

    
    accept_confirm do
      click_link 'Delete'
    end
    assert_text "Deleted"
    refute_text guestbook.title
  end
end
