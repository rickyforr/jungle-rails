class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(params[:review])
  end


 private
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:whale).permit(:awesome)
    end

end
