class Search < ApplicationRecord
  # def search_courses
  #   courses = Course.all
  #   courses = courses.where(["year ILIKE ?", "%#{year}%"]) if year.present?
  #   courses = courses.where(["semester ILIKE ?", "%#{semester}%"]) if semester.present?
  #   courses = courses.where(["subject ILIKE ?", "%#{subject}%"]) if subject.present?
  #   courses = courses.where(["cast(number as text) ILIKE ?", "%#{number}%"]) if number.present?
  #
  #   return courses
  #
  # end

  def search_course_infos
    course_infos = CourseInfo.all
    course_infos = course_infos.where(["year ILIKE ?", "%#{year}%"]).order(:department, :coursenumber) if year.present?
    course_infos = course_infos.where(["semester ILIKE ?", "%#{semester}%"]).order(:department, :coursenumber) if semester.present?
    course_infos = course_infos.where(["department ILIKE ?", "%#{department}%"]).order(:department, :coursenumber) if department.present?
    course_infos = course_infos.where(["cast(coursenumber as text) ILIKE ?", "%#{coursenumber}%"]).order(:department, :coursenumber) if coursenumber.present?
    course_infos = course_infos.where(["cast(info_prerequisites as text) ILIKE ?", "%#{info_prerequisites}%"]).order(:department, :coursenumber) if info_prerequisites.present?

    return course_infos

  end
end