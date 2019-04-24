class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password
  has_many :memories
  has_many :photos
  has_many :comments
end
