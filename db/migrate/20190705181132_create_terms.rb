class CreateTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :terms do |t|
      t.string :year
      t.string :semester

      t.timestamps
    end
  end
end
