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

ActiveRecord::Schema.define(version: 2019_07_05_183117) do

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
