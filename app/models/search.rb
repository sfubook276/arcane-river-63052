class Search < ApplicationRecord
  def search_courses
    courses = Course.all
    courses = courses.where(["year ILIKE ?", "%#{year}%"]) if year.present?
    courses = courses.where(["semester ILIKE ?", "%#{semester}%"]) if semester.present?
    courses = courses.where(["subject ILIKE ?", "%#{subject}%"]) if subject.present?
    courses = courses.where(["cast(number as text) ILIKE ?", "%#{number}%"]) if number.present?

    return courses

  end
end