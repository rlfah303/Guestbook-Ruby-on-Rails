require 'test_helper'

class GuestbookTest < ActiveSupport::TestCase
  test "valid guestbook" do
    guestbook = FactoryBot.build :guestbook
    assert guestbook.valid?
  end
  
  test "invalid without title" do
    guestbook = FactoryBot.build :guestbook
    guestbook.title =nil
    
    refute guestbook.valid?
  end
  
  test "invalid without user" do
    guestbook = FactoryBot.build :guestbook
    guestbook.user =nil
    
    refute guestbook.valid?
  end
end
