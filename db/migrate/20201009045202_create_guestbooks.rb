class CreateGuestbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :guestbooks do |t|
      t.string :title
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
  