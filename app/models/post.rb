class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true, length: { in: 5..140 }
  validates :body, presence: true, length: { minimum: 140 }
  validates :user_id, presence: true

  def self.search(search)
    if search
      where("body LIKE ?", "%#{search}%")
    end
  end

  scope :newest, -> { order('created_at DESC') }
end
