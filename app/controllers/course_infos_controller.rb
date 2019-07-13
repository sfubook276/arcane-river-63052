class CourseInfosController < ApplicationController
  def index
    @course_infos = CourseInfo.search(params[:search]).all.order(:department)
  end

  def show
    @course_infos = CourseInfo.find(params[:id])
  end

  def new
  end

  # def create
  #   @course = Course.new(course_info_params)
  #
  #   @course.save
  #   redirect_to @course
  # end

  private
  def course_info_params
    params.require(:course_info).permit(:year, :semester, :department, :coursenumber, :section, :info_description, :info_prerequisites, :info_corequisites)
  end
end