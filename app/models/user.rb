class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :comments, dependent: :destroy

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
  validates_presence_of :email, :name
end
