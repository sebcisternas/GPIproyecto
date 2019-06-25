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

ActiveRecord::Schema.define(version: 2019_01_25_050156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerta", force: :cascade do |t|
    t.date "fecharecepcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "informe_id"
    t.boolean "estado", default: true
    t.string "prioridad"
    t.index ["informe_id"], name: "index_alerta_on_informe_id"
  end

  create_table "carreras", force: :cascade do |t|
    t.string "nombrecarrera"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "facultad_id"
    t.boolean "estado", default: true
    t.index ["facultad_id"], name: "index_carreras_on_facultad_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombreestudiante"
    t.decimal "nem"
    t.string "situacioneconomica"
    t.string "colegio"
    t.decimal "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "carrera_id"
    t.date "fecha_nacimiento"
    t.boolean "estado", default: true
    t.string "rut"
    t.string "telefono"
    t.string "email"
    t.string "apellidopa"
    t.string "apellidoma"
    t.string "direccion"
    t.string "comuna"
    t.integer "user_id"
    t.index ["user_id"], name: "index_estudiantes_on_user_id"
  end

  create_table "facultads", force: :cascade do |t|
    t.string "nombrefacultad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "estado", default: true
  end

  create_table "informes", force: :cascade do |t|
    t.integer "nota2"
    t.integer "nota3"
    t.integer "nota4"
    t.integer "nota5"
    t.float "promhabitos"
    t.integer "nota6"
    t.integer "nota7"
    t.integer "nota8"
    t.integer "nota9"
    t.integer "nota10"
    t.float "promvocacion"
    t.integer "nota11"
    t.integer "nota12"
    t.integer "nota13"
    t.integer "nota14"
    t.integer "nota15"
    t.float "promsalud"
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "estudiante_id"
    t.bigint "user_id"
    t.boolean "estado", default: true
    t.integer "nota1"
    t.integer "nota16"
    t.integer "nota17"
    t.integer "nota18"
    t.integer "nota19"
    t.integer "nota20"
    t.integer "nota21"
    t.integer "nota22"
    t.integer "nota23"
    t.integer "nota24"
    t.integer "nota25"
    t.integer "nota26"
    t.integer "nota27"
    t.integer "nota28"
    t.integer "nota29"
    t.integer "nota30"
    t.integer "nota31"
    t.integer "nota32"
    t.integer "nota33"
    t.integer "nota34"
    t.integer "nota35"
    t.integer "nota36"
    t.integer "nota37"
    t.string "resultado"
    t.index ["estudiante_id"], name: "index_informes_on_estudiante_id"
    t.index ["user_id"], name: "index_informes_on_user_id"
  end

  create_table "rols", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "estado", default: true
  end

  create_table "supervisars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "estudiante_id"
    t.index ["estudiante_id"], name: "index_supervisars_on_estudiante_id"
    t.index ["user_id"], name: "index_supervisars_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellidopa"
    t.string "apellidoma"
    t.integer "rol_id"
    t.string "telefono"
    t.integer "facultad_id"
    t.date "fecha_nacimiento"
    t.boolean "estado", default: true
    t.string "rut"
    t.bigint "carrera_id"
    t.index ["carrera_id"], name: "index_users_on_carrera_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alerta", "informes"
  add_foreign_key "carreras", "facultads"
  add_foreign_key "estudiantes", "carreras"
  add_foreign_key "estudiantes", "users"
  add_foreign_key "informes", "estudiantes"
  add_foreign_key "informes", "users"
  add_foreign_key "supervisars", "estudiantes"
  add_foreign_key "supervisars", "users"
  add_foreign_key "users", "carreras"
  add_foreign_key "users", "facultads"
  add_foreign_key "users", "rols"
end
