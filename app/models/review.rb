class Review < ApplicationRecord
  belongs_to :user
  belongs_to :mentor

  validates :score, presence: true
end
