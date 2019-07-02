class CoursesController < ApplicationController
    # Default view shows all courses
    def index
        @courses = Course.search(params[:search])
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
    end

    def create
        @course = Course.new(course_params)

        @course.save
        redirect_to @course
    end

    private
    def course_params
        params.require(:course).permit(:subject, :number, :credits, :prerequisites, :corequisites)
    end
end
