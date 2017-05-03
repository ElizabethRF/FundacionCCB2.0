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

ActiveRecord::Schema.define(version: 20170503124639) do

  create_table "answers", force: :cascade do |t|
    t.text    "answer"
    t.integer "value"
    t.integer "question_id"
  end

  create_table "answers_projects", force: :cascade do |t|
    t.integer  "project_id", null: false
    t.integer  "answer_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_answers_projects_on_answer_id"
    t.index ["project_id"], name: "index_answers_projects_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "area"
    t.decimal  "amount"
    t.datetime "starting"
    t.datetime "ending"
    t.text     "description"
    t.text     "location"
    t.integer  "volunteers"
    t.string   "problem"
    t.integer  "serves_num_people"
    t.text     "title"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.integer  "value"
    t.string   "area"
    t.text     "phase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "mail"
    t.string   "telephone_number"
    t.string   "last_name"
    t.string   "second_last_name"
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
