class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :startTime
      t.date :startDate
      t.string :endTime
      t.date :endDate
      t.string :sectionCode
      t.string :isExam
      t.string :days
      t.string :campus
      t.string :buildingCode
      t.string :roomNumber

      t.timestamps
    end
  end
end
