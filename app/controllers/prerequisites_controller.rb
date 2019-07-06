class PrerequisitesController < ApplicationController
  def index
    @prequisites = Prerequisite.all
  end

  def show
    @prequisite = Prerequisite.find(params[:id])
  end

  def new
  end

  def create
    @prequisite = Prerequisite.new(prequisite_params_params)

    @prequisite.save
    redirect_to @prequisite
  end

  private
  def prequisite_params
    params.require(:prequisite).permit(:department, :courseNumber, :requisiteOfDepartment, :requisitesofCourseNumber, :relationship)
  end
end
