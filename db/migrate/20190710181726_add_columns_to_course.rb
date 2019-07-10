class AddColumnsToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :year, :string
    add_column :courses, :semester, :string
  end
end
