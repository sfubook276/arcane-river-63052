class CoursesController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "thestartupguys276", except: [:index, :show]

    def index
        # @courses = Course.all
        # @courses = Course.search(params[:search]).all.order(:subject)
        @course_infos = CourseInfo.search(params[:search]).all.order(:department) # test if can view data from course_info
        # all.order(:subject) sorts by subject
    end

    def show
        # @course = Course.find(params[:id])
        @course_infos = CourseInfo.find(params[:id])
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
