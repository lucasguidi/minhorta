class ProductController < ApplicationController
  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)

    redirect_to product_path(product)
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.update(product_params)

    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to product_path
  end

  def product_params
    params.require(:product).premit(:name, :state)
  end
  
end
