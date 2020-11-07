class TechcampsController < ApplicationController
  def top
    @mentor = Mentor.all
  end

  private

  def review_params
    params.require(:review).permit(:mentor_id, :score, :content)
  end
end
