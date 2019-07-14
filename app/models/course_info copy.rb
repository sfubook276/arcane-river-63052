class CourseInfo < ApplicationRecord
  def self.search(search)
    if search
      where(["cast(department as text) ILIKE ? or cast(coursenumber as text) ILIKE ?", "%#{search}%", "%#{search}%"])
      # LIKE for case-sensitive, ILIKE for case-insensitive
    else
      none
      # where statement below will only display current courses offered (just to load the page faster when no search parameters are entered)
      # where(["cast(semester as text) = 'SUMMER' and cast(year as text) = '2019'", "%#{search}%", "%#{search}%"])
      # all
    end
  end


end
