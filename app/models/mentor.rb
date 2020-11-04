class Mentor < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
