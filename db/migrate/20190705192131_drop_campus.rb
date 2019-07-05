class DropCampus < ActiveRecord::Migration[5.2]
  def change
    drop_table :campus
  end
end