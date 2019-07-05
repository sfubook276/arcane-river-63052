class CreateCorequisites < ActiveRecord::Migration[5.2]
  def change
    create_table :corequisites do |t|
      t.string :department
      t.integer :courseNumber
      t.string :requisiteOfDepartment
      t.integer :requisitesofCourseNumber
      t.string :relationship

      t.timestamps
    end
  end
end
