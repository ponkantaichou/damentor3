class Mentor < ApplicationRecord
  has_many :reviews, dependent: :destroy
  def avg_score
    if reviews.empty?
      0.0
    else
      reviews.average(:score).round(1).to_f
    end
  end

  def review_score_percentage
    if reviews.empty?
      0.0
    else
      reviews.average(:score).round(1).to_f * 100 / 5
    end
  end

  def self.search(search)
    if search != ""
      Mentor.where('name LIKE(?)', "%#{search}%")
    else
      Mentor.all
    end
  end
end
