class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
  end

  def create
    @instructor = Instructor.new(instructor_params)

    @instructor.save
    redirect_to @instructor
  end

  private
  def instructor_params
    params.require(:instructor).permit(:fName, :lName, :commonName, :officeName, :officeHours, :email, :phone, :roleCode, :profileUrl)
  end
end
