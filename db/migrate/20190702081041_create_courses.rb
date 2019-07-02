class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :number
      t.integer :credits
      t.text :prerequisites
      t.text :corequisites

      t.timestamps
    end
  end
end
