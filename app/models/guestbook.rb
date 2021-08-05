class Guestbook < ApplicationRecord
    has_many :comments  
    belongs_to :user
    has_one_attached :image
    validates :title, presence: true
end
