class ChangeNumberToStringInCourse < ActiveRecord::Migration[5.2]
  def change
    def self.up
      change_column :courses, :number, :string
    end

    def self.down
      change_column :courses, :number, :integer
    end
  end
end
