class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @mentor = Mentor.find(params[:mentor_id])
    @reviews = @mentor.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to mentor_reviews_path(@review.mentor)
    else
      @mentor = Mentor.find(params[:mentor_id])
      render "mentor/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:mentor_id, :score, :content)
  end
end