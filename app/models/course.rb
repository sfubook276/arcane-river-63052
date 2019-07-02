class Course < ApplicationRecord
  # search params : subject, number, credits, prerequisites, corequisites
  def self.search(search)
    if search
      where(["subject LIKE ? or number LIKE ?", "%#{search}%", "%#{search}%"])
    else
      all
    end
  end
end
