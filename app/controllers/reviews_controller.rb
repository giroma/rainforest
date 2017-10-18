class ReviewsController < ApplicationController

  def create




    @review = Review.new(
    comment: params[:review][:comment],
    product_id: params[:product_id]
    )

    if @review.save
      # flash.notice = 'Saved succesfully'
      redirect_to product_path(params[:product_id])
    else
      @product = Product.find(params[:product_id])
      @reviews = @product.reviews
      render "/products/show"
      # render product_path(params[:product_id])
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
