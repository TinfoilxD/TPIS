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

ActiveRecord::Schema.define(version: 20170409152259) do

  create_table "alignment_types", force: :cascade do |t|
    t.string   "alignment_type"
    t.string   "abbrev"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "application_forms", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "training_center_id"
    t.integer  "course_id"
    t.string   "aha_instructor_motivation"
    t.string   "marketing_origin"
    t.string   "teaching_frequency"
    t.boolean  "owned_equipment"
    t.boolean  "public_class_availability"
    t.boolean  "teaching_location"
    t.boolean  "screening_form_agreement"
    t.date     "date_agreed"
    t.boolean  "aha_form_agreement"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "experience_check"
    t.string   "experience_description"
    t.integer  "course_type_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "faculty_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "title"
    t.integer  "application_form_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.integer  "alignment_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "occupation"
    t.string   "city"
  end

  create_table "course_types", force: :cascade do |t|
    t.string   "course_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "course_type_id"
    t.date     "course_start_date"
    t.string   "course_address"
    t.string   "course_city"
    t.string   "state"
    t.string   "country"
    t.string   "course_zipcode"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "experience_description"
    t.integer  "candidate_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "faculty_type_id"
    t.string   "email"
    t.string   "phone"
    t.string   "office_address"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "faculty_types", force: :cascade do |t|
    t.string   "job_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  create_table "training_centers", force: :cascade do |t|
    t.string   "training_center_name"
    t.string   "primary_contact"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.integer  "security_question"
    t.string   "security_answer"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
