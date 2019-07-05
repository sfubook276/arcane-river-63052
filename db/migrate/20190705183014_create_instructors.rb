class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :fName
      t.string :lName
      t.string :commonName
      t.string :officeName
      t.string :officeHours
      t.string :email
      t.string :phone
      t.string :roleCode
      t.string :profileUrl

      t.timestamps
    end
  end
end
