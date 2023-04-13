class CategoriesController < ApplicationController


  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def create
    @category = Category.new(
      name: name = params[:name]
    )

    @category.save
    render :show, json: {message: "Category successfully created."}
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name

    @category.save
    render :show, json: {message: "Category successfully updated."}
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy

    render json: {message: "Category successfully destroyed."}
  end

end
