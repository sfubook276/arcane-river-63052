class CreateCourseInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :course_infos do |t|
      t.text :year
      t.text :semester
      t.text :department
      t.text :coursenumber
      t.text :section
      t.text :info_description
      t.text :info_prerequisites
      t.text :info_corequisites

      t.timestamps
    end
  end
end
