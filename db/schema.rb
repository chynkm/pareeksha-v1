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

ActiveRecord::Schema.define(version: 20161225011803) do

  create_table "candidates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "email",                  null: false
    t.string   "name",       limit: 100, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "exams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "candidate_id"
    t.integer  "question_id"
    t.string   "link",                                            null: false
    t.text     "code",         limit: 4294967295
    t.integer  "start_time"
    t.integer  "end_time"
    t.integer  "status",       limit: 2,          default: 0
    t.boolean  "timed_out",                       default: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.index ["candidate_id"], name: "index_exams_on_candidate_id", using: :btree
    t.index ["question_id"], name: "index_exams_on_question_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.text     "question",   limit: 4294967295, null: false
    t.integer  "duration",                                   comment: "in seconds"
    t.integer  "difficulty", limit: 2
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "solution_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "solution_id"
    t.integer  "parameter",   limit: 2,     default: 1
    t.text     "value",       limit: 65535,             null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["solution_id"], name: "index_solution_details_on_solution_id", using: :btree
  end

  create_table "solutions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "question_id"
    t.integer  "complexity",  limit: 2
    t.text     "result",      limit: 65535, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["question_id"], name: "index_solutions_on_question_id", using: :btree
  end

  create_table "verify_solutions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "exam_id"
    t.integer  "solution_id"
    t.boolean  "result",      default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["exam_id"], name: "index_verify_solutions_on_exam_id", using: :btree
    t.index ["solution_id"], name: "index_verify_solutions_on_solution_id", using: :btree
  end

end
