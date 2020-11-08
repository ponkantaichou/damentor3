class Review < ApplicationRecord
  belongs_to :user
  belongs_to :mentor

  validates :score, presence: true
  validates :content, presence: true
end
