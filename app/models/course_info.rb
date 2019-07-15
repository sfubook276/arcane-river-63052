class CourseInfo < ApplicationRecord
  def self.search(search)
    if search
      where(["cast(department as text) ILIKE ? or cast(coursenumber as text) ILIKE ?", "%#{search}%", "%#{search}%"])
      # LIKE for case-sensitive, ILIKE for case-insensitive
    else
      # none
      where(["cast(year as text) = '2019' and cast(semester as text) = 'summer'", "%#{search}%", "%#{search}%"])
    end
  end


end
