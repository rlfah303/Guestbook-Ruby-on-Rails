class Comment < ApplicationRecord
    belongs_to :guestbook
    validates :name, presence: true
end
