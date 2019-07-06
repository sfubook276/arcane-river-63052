class CorequisitesController < ApplicationController
  def index
    @corequisites = Corequisite.all
  end

  def show
    @corequisite = Corequisite.find(params[:id])
  end

  def new
  end

  def create
    @corequisite = Corequisite.new(corequisite_params)

    @corequisite.save
    redirect_to @corequisite
  end

  private
  def corequisite_params
    params.require(:corequisite).permit(:department, :courseNumber, :requisiteOfDepartment, :requisitesofCourseNumber, :relationship)
  end
end
