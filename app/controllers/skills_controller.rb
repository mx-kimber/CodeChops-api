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
      problem: problem = params[:problem] = params[:problem]
      problem: solution = params[:solution] = params[:solution]
      problem: category_id = params[:category_id] = params[:category_id]
    )
#   redirect_to/unprocessable_entity / success message

    @skill.save
    render :show
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.problem = params[:problem] || @skill.problem
    @skill.solution = params[:solution] || @skill.solution
    @skill.category_id = params[:category_id] || @skill.category_id
#   redirect_to/unprocessable_entity / success message

    @skill.save
    rendr :show
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: {message: "skill successfully destroyed."}
#   redirect_to/are you sure you want to delete this?
  end

end

