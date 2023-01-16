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

ActiveRecord::Schemahard.define(version: 2022_03_31_133511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questionshard", force: :cascade do |t|
    t.text "texthard"
    t.string "correct_answerhard"
    t.string "wrong_answerhard_1"
    t.string "wrong_answerhard_2"
    t.string "wrong_answerhard_3"
    t.datetime "createdhard_at", precision: 6, null: false
    t.datetime "updatedhard_at", precision: 6, null: false
  end

end
