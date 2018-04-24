class Product < ApplicationRecord
  has_many :reviews
  validates :name, :description, :price_in_cents, :url, presence: true
  validates :price_in_cents, numericality: { greater_than: 0 }
  def price_in_dollar
    price_in_cents/100.0
  end
end
