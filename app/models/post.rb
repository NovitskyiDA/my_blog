class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true, length: 5..100
  validates :body, presence: true
end
