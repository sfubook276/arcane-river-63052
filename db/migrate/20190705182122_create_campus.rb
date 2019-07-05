class CreateCampus < ActiveRecord::Migration[5.2]
  def change
    create_table :campus do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :postalCode

      t.timestamps
    end
  end
end
