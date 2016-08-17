class ReviewsController < ApplicationController
  before_action :set_restaurant
  def new
    @review = Review.new
  end
  def create
    Review.create(reviews_params)
    redirect_to restaurant_path(restaurant)
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def review_params
    params.require(:review).permit(:content, :ratings)
  end
end
