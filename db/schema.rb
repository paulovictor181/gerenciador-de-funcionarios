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

ActiveRecord::Schema[7.2].define(version: 2024_09_01_013553) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cargos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.bigint "departamento_id", null: false
    t.integer "nivel"
    t.decimal "salario_base", precision: 10, scale: 2
    t.text "requisitos"
    t.text "beneficios"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_cargos_on_departamento_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "codigo"
    t.string "localizacao"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos_usuarios", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "departamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_departamentos_usuarios_on_departamento_id"
    t.index ["usuario_id"], name: "index_departamentos_usuarios_on_usuario_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome_completo"
    t.date "data_nascimento"
    t.string "cpf"
    t.string "rg"
    t.string "endereco"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.string "telefone"
    t.string "email"
    t.string "cargo"
    t.date "data_contratacao"
    t.decimal "salario"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cargo_id", null: false
    t.integer "genero"
    t.index ["cargo_id"], name: "index_funcionarios_on_cargo_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "senha"
    t.integer "nivel_acesso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "cargos", "departamentos", on_delete: :cascade
  add_foreign_key "departamentos_usuarios", "departamentos"
  add_foreign_key "departamentos_usuarios", "usuarios"
  add_foreign_key "funcionarios", "cargos"
end
