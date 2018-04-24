class Review < ApplicationRecord
  belongs_to :product
  belongs_to :users
  validates :description, presence: true
end
