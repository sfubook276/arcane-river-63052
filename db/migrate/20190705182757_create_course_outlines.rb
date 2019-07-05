class CreateCourseOutlines < ActiveRecord::Migration[5.2]
  def change
    create_table :course_outlines do |t|
      t.string :year
      t.string :semester
      t.string :department
      t.integer :number
      t.string :title
      t.string :courseSection
      t.string :outlinePath
      t.string :deliveryMethod
      t.string :departmentalUgradNotes
      t.string :designation
      t.string :type
      t.string :courseDetails
      t.string :prerequisites
      t.string :description
      t.string :name
      t.string :educationGoals
      t.string :classNumber
      t.string :shortNote
      t.string :section
      t.string :units
      t.string :corequisites
      t.string :registrarNotes
      t.string :gradingNotes
      t.string :term
      t.string :notes
      t.string :degreeLevel

      t.timestamps
    end
  end
end
