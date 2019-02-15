class UserSerializer < ActiveModel::Serializer
  has_many :wishlists
  has_many :products
  attributes :id, :name
end
