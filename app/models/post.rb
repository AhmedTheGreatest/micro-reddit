class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :user, presence: true
  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { minimum: 8 }
end
