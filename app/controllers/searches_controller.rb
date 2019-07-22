class SearchesController < ApplicationController
  # authenication on search results page
  http_basic_authenticate_with name: "admin", password: "thestartupguys276", only: [:index]

  def index
    @searches = Search.all
  end

  def new
    @search = Search.new
    @course_infos = CourseInfo.pluck(:semester).uniq
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @course_infos = CourseInfo.pluck(:semester).uniq
  end

  def update
    @search = Search.create(search_params)
    redirect_to @search
  end

  private

  def search_params
    params.require(:search).permit(:year, :semester, :department, :coursenumber, :info_prerequisites)
  end
end