class Course < ApplicationRecord
  # params :subject, :number, :credits, :prerequisites, :corequisites
  def self.search(search)
    if search
      where(["cast(subject as text) LIKE ? or cast(number as text) LIKE ?", "%#{search}%", "%#{search}%"])
    else
      all
    end
  end
end
