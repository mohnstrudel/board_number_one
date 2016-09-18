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

ActiveRecord::Schema.define(version: 20160918161424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "hex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "fabrics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "price"
    t.string   "float"
    t.string   "picture"
  end

  create_table "patterns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
    t.index ["product_id"], name: "index_pictures_on_product_id", using: :btree
  end

  create_table "productborders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "border_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["border_id"], name: "index_productborders_on_border_id", using: :btree
    t.index ["product_id"], name: "index_productborders_on_product_id", using: :btree
  end

  create_table "productcolors", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_productcolors_on_color_id", using: :btree
    t.index ["product_id"], name: "index_productcolors_on_product_id", using: :btree
  end

  create_table "productfabrics", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "fabric_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fabric_id"], name: "index_productfabrics_on_fabric_id", using: :btree
    t.index ["product_id"], name: "index_productfabrics_on_product_id", using: :btree
  end

  create_table "productpatterns", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "pattern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pattern_id"], name: "index_productpatterns_on_pattern_id", using: :btree
    t.index ["product_id"], name: "index_productpatterns_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "price"
    t.string   "size"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "fabric_id"
    t.integer  "border_id"
    t.integer  "color_id"
    t.integer  "pattern_id"
    t.index ["border_id"], name: "index_products_on_border_id", using: :btree
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["color_id"], name: "index_products_on_color_id", using: :btree
    t.index ["fabric_id"], name: "index_products_on_fabric_id", using: :btree
    t.index ["pattern_id"], name: "index_products_on_pattern_id", using: :btree
  end

  create_table "productsizes", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_productsizes_on_product_id", using: :btree
    t.index ["size_id"], name: "index_productsizes_on_size_id", using: :btree
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pictures", "products"
  add_foreign_key "productborders", "borders"
  add_foreign_key "productborders", "products"
  add_foreign_key "productcolors", "colors"
  add_foreign_key "productcolors", "products"
  add_foreign_key "productfabrics", "fabrics"
  add_foreign_key "productfabrics", "products"
  add_foreign_key "productpatterns", "patterns"
  add_foreign_key "productpatterns", "products"
  add_foreign_key "products", "borders"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "colors"
  add_foreign_key "products", "fabrics"
  add_foreign_key "products", "patterns"
  add_foreign_key "productsizes", "products"
  add_foreign_key "productsizes", "sizes"
end
