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
      flash.notice = "Save failed"
      render :new
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end
end

private
def product_params
  params.require(:product).permit(:name, :description, :price)
end
