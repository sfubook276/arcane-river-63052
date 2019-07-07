class Course < ApplicationRecord
  # params :subject, :number, :credits, :prerequisites, :corequisites
  def self.search(search)
    if search
      where(["cast(subject as text) ILIKE ? or cast(number as text) ILIKE ?", "%#{search}%", "%#{search}%"])
      # LIKE for case-sensitive, ILIKE for case-insensitive
    else
      all
    end
  end
end