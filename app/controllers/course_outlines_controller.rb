class CourseOutlinesController < ApplicationController
  def index
    @course_outlines = CourseOutline.all
  end

  def show
    @course_outline = CourseOutline.find(params[:id])
  end

  def new
  end

  def create
    @course_outline = CourseOutline.new(course_outline_params)

    @course_outline.save
    redirect_to @course_outline
  end

  private
  def course_outline_params
    params.require(:course_outline).permit(:year, :semester, :department, :number, :title, :courseSection, :outlinePath, :deliveryMethod, :departmentalUgradNotes, :designation, :type, :courseDetails, :prerequisites, :description, :name, :educationGoals, :classNumber, :shortNote, :section, :units, :corequisites, :registrarNotes, :gradingNotes, :term, :notes, :degreeLevel)
  end
end
