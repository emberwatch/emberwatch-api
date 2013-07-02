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

ActiveRecord::Schema.define(version: 20130702195525) do

  create_table "links", force: true do |t|
    t.string   "tweet_id"
    t.string   "url"
    t.datetime "posted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "md5"
  end

  add_index "links", ["md5"], name: "index_links_on_md5", using: :btree
  add_index "links", ["posted_at"], name: "index_links_on_posted_at", using: :btree
  add_index "links", ["tweet_id"], name: "index_links_on_tweet_id", using: :btree
  add_index "links", ["url"], name: "index_links_on_url", using: :btree

  create_table "meets", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "url"
    t.integer  "meetup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meets", ["name"], name: "index_meets_on_name", using: :btree

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "github"
    t.string   "twitter"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["github"], name: "index_people_on_github", using: :btree
  add_index "people", ["name"], name: "index_people_on_name", using: :btree
  add_index "people", ["twitter"], name: "index_people_on_twitter", using: :btree

  create_table "publishers", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publishers", ["name"], name: "index_publishers_on_name", using: :btree

  create_table "tagged_releases", force: true do |t|
    t.string   "title"
    t.string   "project"
    t.string   "tag"
    t.string   "build"
    t.string   "announcement"
    t.datetime "tagged_at"
    t.boolean  "active",       default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tagged_releases", ["project", "tag"], name: "index_tagged_releases_on_project_and_tag", unique: true, using: :btree
  add_index "tagged_releases", ["tag"], name: "index_tagged_releases_on_tag", using: :btree
  add_index "tagged_releases", ["tagged_at"], name: "index_tagged_releases_on_tagged_at", order: {"tagged_at"=>:desc}, using: :btree

  create_table "talks", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.integer  "person_id"
    t.datetime "delivered_at"
    t.string   "video_url"
    t.string   "details_url"
    t.string   "slides_url"
    t.integer  "meet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "talks", ["delivered_at"], name: "index_talks_on_delivered_at", order: {"delivered_at"=>:desc}, using: :btree
  add_index "talks", ["meet_id"], name: "index_talks_on_meet_id", using: :btree
  add_index "talks", ["person_id"], name: "index_talks_on_person_id", using: :btree
  add_index "talks", ["title"], name: "index_talks_on_title", using: :btree

end
