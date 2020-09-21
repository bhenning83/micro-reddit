class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 16 }
  validates :password, presence: true
end
