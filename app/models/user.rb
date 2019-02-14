class User < ApplicationRecord
  has_many :wishlists
  has_many :products, through: :wishlists
  validates :name, presence: true, uniqueness: true
end
