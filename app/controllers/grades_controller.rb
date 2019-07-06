class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def new
  end

  def create
    @grade = Grade.new(grade_params)

    @grade.save
    redirect_to @grade
  end

  private
  def grade_params
    params.require(:grade).permit(:description, :weight)
  end
end
