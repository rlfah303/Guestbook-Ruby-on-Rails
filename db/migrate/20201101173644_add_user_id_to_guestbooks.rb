class AddUserIdToGuestbooks < ActiveRecord::Migration[6.0]
  def change
    add_column :guestbooks, :user_id, :integer
  end
end
