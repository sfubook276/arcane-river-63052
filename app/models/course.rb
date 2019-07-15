class Course < ApplicationRecord
  # params :subject, :number, :credits, :prerequisites, :corequisites
  def self.search(search)
    if search
      where(["cast(department as text) ILIKE ? or cast(coursenumber as text) ILIKE ?", "%#{search}%", "%#{search}%"])
      # LIKE for case-sensitive, ILIKE for case-insensitive
    else
      all
    end
  end
end