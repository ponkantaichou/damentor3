class MentorsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
    @review = Review.new
  end
end
