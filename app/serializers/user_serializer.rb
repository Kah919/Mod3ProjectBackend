class UserSerializer < ActiveModel::Serializer
  has_many :wishlists
  attributes :id, :name
end
