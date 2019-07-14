class ChangeCoursenumberToBeStringInSearches < ActiveRecord::Migration[5.2]
  def up
    change_column :searches, :coursenumber, :string
  end

  def down
    change_column :searches, :coursenumber, :integer
  end
end
