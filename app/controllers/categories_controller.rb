class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @category = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def create
    @category = Category.new(
      name: name = params[:name] = params[:name]
    )
#   redirect_to/unprocessable_entity / success message
    @category.save
    render :show
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name
#   redirect_to/unprocessable_entity / success message
    @category.save
    rendr :show
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: {message: "Category successfully destroyed."}
#   redirect_to/unprocessable_entity / success message
  end

end
