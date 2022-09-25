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

ActiveRecord::Schema.define(version: 2022_09_20_153523) do

  create_table "categorias_despesas", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.decimal "percentual"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usuario_id", null: false
    t.index ["usuario_id"], name: "index_categorias_despesas_on_usuario_id"
  end

  create_table "depesas", force: :cascade do |t|
    t.decimal "valor"
    t.boolean "status"
    t.date "data_vencimento"
    t.integer "usuario_id", null: false
    t.integer "categorias_depesas_id"
    t.boolean "quitado"
    t.date "data_quitacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categorias_depesas_id"], name: "index_depesas_on_categorias_depesas_id"
    t.index ["usuario_id"], name: "index_depesas_on_usuario_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.integer "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_enderecos_on_usuario_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "cargo"
    t.decimal "salario"
    t.date "data_contratacao"
    t.date "data_demissao"
    t.boolean "ativo"
    t.integer "pessoa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pessoa_id"], name: "index_funcionarios_on_pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "data_nascimento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "authentication_token", limit: 30
    t.integer "pessoa_id", null: false
    t.index ["authentication_token"], name: "index_usuarios_on_authentication_token", unique: true
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["pessoa_id"], name: "index_usuarios_on_pessoa_id"
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "categorias_despesas", "usuarios"
  add_foreign_key "depesas", "categorias_depesas", column: "categorias_depesas_id"
  add_foreign_key "depesas", "usuarios"
  add_foreign_key "enderecos", "usuarios"
  add_foreign_key "funcionarios", "pessoas"
  add_foreign_key "usuarios", "pessoas"
end
