class User < ApplicationRecord
  has_many :memories
  has_many :photos, through: :memories
  has_many :comments
  has_many :photos, through: :comments

  validates :email, uniqueness: true

  has_secure_password 
end
