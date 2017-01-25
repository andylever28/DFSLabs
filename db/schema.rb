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

ActiveRecord::Schema.define(version: 20170124190126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dfs_stats", force: :cascade do |t|
    t.integer  "draft_kings_salary"
    t.integer  "dfs_rating"
    t.integer  "player_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["player_id"], name: "index_dfs_stats_on_player_id", using: :btree
  end

  create_table "pga_tournaments", force: :cascade do |t|
    t.integer  "salary"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["player_id"], name: "index_pga_tournaments_on_player_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_tournaments", id: false, force: :cascade do |t|
    t.integer "player_id",     null: false
    t.integer "tournament_id", null: false
  end

  create_table "rank_stats", force: :cascade do |t|
    t.integer  "pga_rank"
    t.integer  "avg_score_last_30"
    t.float    "avg_score_last_year"
    t.integer  "top_ten"
    t.integer  "vegas_odds"
    t.float    "missed_cut"
    t.integer  "player_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "events_played"
    t.index ["player_id"], name: "index_rank_stats_on_player_id", using: :btree
  end

  create_table "stroke_stats", force: :cascade do |t|
    t.float    "putts_per_round"
    t.float    "gir"
    t.float    "drive_distance"
    t.float    "drive_accuracy"
    t.float    "scramble_percentage"
    t.integer  "player_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["player_id"], name: "index_stroke_stats_on_player_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dfs_stats", "players"
  add_foreign_key "pga_tournaments", "players"
  add_foreign_key "rank_stats", "players"
  add_foreign_key "stroke_stats", "players"
end
