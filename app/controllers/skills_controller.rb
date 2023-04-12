class CategoriesController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  def index
    @skill = Skill.all
    render :index
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end

  def create
    @skill = Skill.new(
      name: name = params[:name] = params[:name]
    )

    @skill.save
    render :show
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.name = params[:name] || @skill.name

    @skill.save
    rendr :show
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: {message: "skill successfully destroyed."}
#   redirect_to * *
  end

end

