class Course < ApplicationRecord
  # params :subject, :number, :credits, :prerequisites, :corequisites
  def self.search(search)
    if search
      where(["cast(subject as string) LIKE ? or cast(number as string) LIKE ?", "%#{search}%", "%#{search}%"])
    else
      all
    end
  end
end
