class CoursesController < ApplicationController
    # Default view shows all courses
    def index
        @courses = Course.search(params[:search])
    end

    # # Download courses
    # def download
    # end

end
