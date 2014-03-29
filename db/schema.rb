# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140327173258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents", force: true do |t|
    t.string   "name"
    t.string   "company_name"
    t.string   "email"
    t.integer  "phone"
    t.string   "address"
    t.date     "registration"
    t.integer  "from"
    t.integer  "to"
    t.date     "departure_date"
    t.integer  "nights"
    t.integer  "departure_date_type"
    t.integer  "adults"
    t.integer  "children"
    t.integer  "travel_type"
    t.integer  "budget_type"
    t.integer  "budget_limit"
    t.integer  "budget_from"
    t.integer  "budget_to"
    t.integer  "flight_class_type"
    t.integer  "include_budget_airlines_type"
    t.integer  "hotel_star_type"
    t.integer  "hotel_board_type"
    t.integer  "occasion_type"
    t.integer  "activity_type"
    t.string   "about_me"
    t.string   "additional_comment"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boolean_types", force: true do |t|
    t.string   "string"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budget_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flight_class_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flight_expectations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotel_board_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotel_stars", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lead_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lodging_expectations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lodging_preferences", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occasions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "online_reviews", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travel_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traveller_profiles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "mail"
    t.integer  "phone"
    t.string   "country"
    t.integer  "zipcode"
    t.integer  "from"
    t.integer  "to"
    t.integer  "fixed_dates"
    t.integer  "flexible_dates"
    t.integer  "adults"
    t.integer  "children"
    t.date     "departure_date"
    t.integer  "nights"
    t.integer  "lead_type"
    t.integer  "travel_type"
    t.integer  "budget_type"
    t.integer  "budget_from"
    t.integer  "budget_to"
    t.integer  "flight_class_type"
    t.integer  "include_flight_budget_type"
    t.integer  "hotel_star_type"
    t.integer  "hotel_board_type"
    t.integer  "occasion_type"
    t.integer  "activity_type"
    t.integer  "flight_expectation_type"
    t.integer  "lodging_expectation_type"
    t.integer  "lodging_preference_type"
    t.integer  "online_reviews_type"
    t.integer  "traveller_profile_type"
    t.string   "about_me"
    t.string   "additional_comment"
    t.string   "remember_token"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
