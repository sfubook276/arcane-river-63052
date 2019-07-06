class CampusesController < ApplicationController
  def index
    @campuses = Campu.all
  end

  def show
    @campus = Campu.find(params[:id])
  end

  def new
  end

  def create
    @campus = Campu.new(campus_params)

    @campus.save
    redirect_to @campus
  end

  private
  def campus_params
    params.require(:campus).permit(:name, :address, :city, :province, :postalCode)
  end
end
