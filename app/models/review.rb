class Review < ApplicationRecord
  validates :content, :rating, presence: true
  belongs_to :restaurant
  validates :rating, inclusion: 0..5
  validates :rating, numericality: { only_integer: true }
end
