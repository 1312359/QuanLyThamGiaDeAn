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

ActiveRecord::Schema.define(version: 20170618105952) do

  create_table "deans", force: :cascade do |t|
    t.string "ngaybd"
    t.string "diadiem_da"
    t.integer "phongban_id", precision: 38
    t.index ["phongban_id"], name: "index_deans_on_phongban_id"
  end

  create_table "diadiem_phgs", force: :cascade do |t|
    t.string "diadiem"
    t.integer "phongban_id", precision: 38
    t.index ["phongban_id"], name: "i_diadiem_phgs_phongban_id"
  end

  create_table "nhanviens", force: :cascade do |t|
    t.string "honv"
    t.string "tenlot"
    t.string "tennv"
    t.string "phai"
    t.string "luong"
    t.string "diachi"
    t.string "ngaysinh"
    t.integer "manql", precision: 38
    t.integer "phg", precision: 38
    t.index ["manql"], name: "index_nhanviens_on_manql"
    t.index ["phg"], name: "index_nhanviens_on_phg"
  end

  create_table "phancongs", force: :cascade do |t|
    t.string "thoigian"
    t.integer "nhanvien_id", precision: 38
    t.integer "dean_id", precision: 38
    t.index ["dean_id"], name: "index_phancongs_on_dean_id"
    t.index ["nhanvien_id"], name: "index_phancongs_on_nhanvien_id"
  end

  create_table "phongbans", force: :cascade do |t|
    t.string "tenpb"
    t.string "ngaybd"
    t.integer "trphg", precision: 38
    t.index ["trphg"], name: "index_phongbans_on_trphg"
  end

  add_foreign_key "deans", "phongbans"
  add_foreign_key "diadiem_phgs", "phongbans"
  add_foreign_key "nhanviens", "nhanviens", column: "manql"
  add_foreign_key "nhanviens", "phongbans", column: "phg"
  add_foreign_key "phancongs", "deans"
  add_foreign_key "phancongs", "nhanviens"
  add_foreign_key "phongbans", "nhanviens", column: "trphg"
end
