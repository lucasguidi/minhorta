class CategoriesController < ApplicationController
  before_action :get_category, only: %i(show update destroy edit update_state)

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @category.update(category_params)

    redirect_to category_path(@category)
  end

  def destroy
    @category.state = false

    redirect_to categories_path
  end

  def update_state
    @category.update(state: !@category.state)
  end

  private

  def get_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description, :state)
  end
end
