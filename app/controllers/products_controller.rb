class ProductsController < ApplicationController
  before_action :get_product, only: %i(show update destroy edit update_state)
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
    @product.update(product_params)

    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy

    redirect_to products_path
  end

  def update_state
    @product.update(state: !@product.state)
  end

  private

  def product_params
    params.require(:product).permit(:name, :category_id, :state)
  end

  def get_product
    @product = Product.find(params[:id])
  end

  def get_category
    @category = Category.find(params[:id])
  end
  
end
