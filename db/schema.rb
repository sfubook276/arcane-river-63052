# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_14_083413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campus", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "postalCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corequisites", force: :cascade do |t|
    t.string "department"
    t.integer "courseNumber"
    t.string "requisiteOfDepartment"
    t.integer "requisitesofCourseNumber"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_infos", id: false, force: :cascade do |t|
    t.text "year"
    t.text "semester"
    t.text "department"
    t.text "coursenumber"
    t.text "section"
    t.text "info_departmentalugradnotes"
    t.text "info_degreelevel"
    t.text "info_coursedetails"
    t.text "info_number"
    t.text "info_outlinepath"
    t.text "info_gradingnotes"
    t.text "info_title"
    t.text "info_classnumber"
    t.text "info_section"
    t.text "info_units"
    t.text "info_type"
    t.text "info_specialtopic"
    t.text "info_description"
    t.text "info_corequisites"
    t.text "info_deliverymethod"
    t.text "info_registrarnotes"
    t.text "info_term"
    t.text "info_name"
    t.text "info_designation"
    t.text "info_prerequisites"
    t.text "info_notes"
    t.text "info_dept"
    t.text "info_graduatestudiesnotes"
    t.text "info_departmentalgradnotes"
    t.text "info_shortnote"
    t.text "info_codenotes"
    t.text "info_materials"
    t.text "info_requirements"
    t.text "info_educationalgoals"
    t.text "info_instructornotes"
  end

  create_table "course_infosOG", id: :bigint, default: -> { "nextval('course_infos_id_seq'::regclass)" }, force: :cascade do |t|
    t.text "year"
    t.text "semester"
    t.text "department"
    t.text "coursenumber"
    t.text "section"
    t.text "info_description"
    t.text "info_prerequisites"
    t.text "info_corequisites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_outlines", force: :cascade do |t|
    t.string "year"
    t.string "semester"
    t.string "department"
    t.integer "number"
    t.string "title"
    t.string "courseSection"
    t.string "outlinePath"
    t.string "deliveryMethod"
    t.string "departmentalUgradNotes"
    t.string "designation"
    t.string "type"
    t.string "courseDetails"
    t.string "prerequisites"
    t.string "description"
    t.string "name"
    t.string "educationGoals"
    t.string "classNumber"
    t.string "shortNote"
    t.string "section"
    t.string "units"
    t.string "corequisites"
    t.string "registrarNotes"
    t.string "gradingNotes"
    t.string "term"
    t.string "notes"
    t.string "degreeLevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "subject"
    t.integer "number"
    t.integer "credits"
    t.text "prerequisites"
    t.text "corequisites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "year"
    t.string "semester"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "description"
    t.string "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "fName"
    t.string "lName"
    t.string "commonName"
    t.string "officeName"
    t.string "officeHours"
    t.string "email"
    t.string "phone"
    t.string "roleCode"
    t.string "profileUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prerequisites", force: :cascade do |t|
    t.string "department"
    t.integer "courseNumber"
    t.string "requisiteOfDepartment"
    t.integer "requisitesofCourseNumber"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "startTime"
    t.date "startDate"
    t.string "endTime"
    t.date "endDate"
    t.string "sectionCode"
    t.string "isExam"
    t.string "days"
    t.string "campus"
    t.string "buildingCode"
    t.string "roomNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "year"
    t.string "semester"
    t.string "department"
    t.string "coursenumber"
    t.string "info_prerequisites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string "year"
    t.string "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "years", id: false, force: :cascade do |t|
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
