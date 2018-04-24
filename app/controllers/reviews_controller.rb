class ReviewsController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :ensure_user_owns_review, only: [:edit, :update, :destroy]

def create

  @review = Review.new

  @review.description = params[:review][:description]
  @review.product_id = params[:product_id]
  @review.save

  redirect_to product_url(params[:product_id])

end

def edit

  @review = Review.find(params[:id])
  @product = Product.find(params[:product_id])

end

def update

  @review = Review.find(params[:id])

  @review.description = params[:review][:description]
  @review.product_id = params[:product_id]
  @review.save

  redirect_to product_path(params[:product_id])

end

def destroy

  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])

  @review.destroy

  redirect_to product_url(@product.id)
end

end
