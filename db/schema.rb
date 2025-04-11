# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_11_014054) do
  create_table "account_admins", force: :cascade do |t|
    t.string "name"
    t.integer "permission_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "account_families", force: :cascade do |t|
    t.string "main_parent", null: false
    t.string "sec_parent", null: false
    t.string "last_name", null: false
    t.string "street", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "zip", null: false
    t.integer "phone1", null: false
    t.integer "phone2", null: false
    t.integer "phone3"
    t.string "email", null: false
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "account_teachers", force: :cascade do |t|
    t.string "name"
    t.integer "phone1"
    t.integer "phone2"
    t.string "sec_email"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_registrations", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_registrations_on_course_id"
    t.index ["student_id"], name: "index_course_registrations_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.integer "semester_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_courses_on_semester_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.date "birthday"
    t.integer "grade_offset"
    t.integer "account_family_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_family_id"], name: "index_students_on_account_family_id"
  end

  create_table "teacher_assignments", force: :cascade do |t|
    t.integer "account_teacher_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_teacher_id"], name: "index_teacher_assignments_on_account_teacher_id"
    t.index ["course_id"], name: "index_teacher_assignments_on_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.bigint "account_id"
    t.string "account_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_type", "account_id"], name: "index_users_on_account_type_and_account_id"
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "course_registrations", "courses"
  add_foreign_key "course_registrations", "students"
  add_foreign_key "courses", "semesters"
  add_foreign_key "sessions", "users"
  add_foreign_key "students", "account_families"
  add_foreign_key "teacher_assignments", "account_teachers"
  add_foreign_key "teacher_assignments", "courses"
end
