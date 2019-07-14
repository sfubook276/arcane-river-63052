class RenameSearchesColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :searches, :subject, :department
    rename_column :searches, :number, :coursenumber
  end
end
