class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @user = User.last
    @review.user_id = @user.id


if @review.save
      redirect_to :back, notice: 'Review was successfully created.'
    else
      redirect_to :back, notice: 'Failed to create the review'
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:description, :rating)
    end
end

