class CategoriesController < ApplicationController
  before_action :get_category, only: %i(show update destroy edit)

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
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
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

  def category_params
    params.require(:category).permit(:name, :description, :state)
  end

  private

  def get_category
    @category = Category.find(params[:id])
  end
end
