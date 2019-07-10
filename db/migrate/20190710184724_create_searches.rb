class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :year
      t.string :semester
      t.string :subject
      t.integer :number

      t.timestamps
    end
  end
end
