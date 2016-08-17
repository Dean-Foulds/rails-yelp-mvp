class Review < ApplicationRecord
  validates :ratings, :content, :restaurant_id, presence: true
  belongs_to :restaurant
end
