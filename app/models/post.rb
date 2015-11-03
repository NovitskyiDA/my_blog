class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true, length: 5..100
  validates :body, presence: true
  validates :user_id, presence: true
end
