class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :description
      t.string :weight

      t.timestamps
    end
  end
end
