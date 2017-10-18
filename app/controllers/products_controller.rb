class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash.notice = 'Saved succesfully'
      redirect_to @product
    else
      render :new
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    @review = Review.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    #
    if @product.update(product_params)
      flash.notice = 'Saved succesfully'
      redirect_to @product
    else
      render :edit
    end

    # render plain: params[:product].inspect
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash.notice = "Delete successful"
    redirect_to products_path
  end
end

private
def product_params
  params.require(:product).permit(:name, :description, :price)
end
