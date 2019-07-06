class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
  end

  def create
    @schedule = Schedule.new(schedule_params)

    @schedule.save
    redirect_to @schedule
  end

  private
  def schedule_params
    params.require(:schedule).permit(:startTime, :startDate, :endTime, :endDate, :sectionCode, :isExam, :days, :campus, :buildingCode, :roomNumber)
  end
end
