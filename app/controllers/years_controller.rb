class YearsController < ApplicationController
  def index
    @years = Year.all
  end

  def show
    @year = Year.find(params[:id])
  end

  def new
  end

  def create
    @year = Year.new(year_params)

    @year.save
    redirect_to @year
  end

  private
  def year_params
    params.require(:year).permit(:year)
  end
end
