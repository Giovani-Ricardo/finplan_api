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

ActiveRecord::Schema.define(version: 2022_10_09_205835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorias_despesas", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.decimal "percentual"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "despesas", force: :cascade do |t|
    t.decimal "valor"
    t.boolean "ativo"
    t.date "data_vencimento"
    t.bigint "categorias_despesa_id", null: false
    t.boolean "quitado"
    t.date "data_quitacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "descricao"
    t.index ["categorias_despesa_id"], name: "index_despesas_on_categorias_despesa_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "cargo"
    t.decimal "salario"
    t.date "data_contratacao"
    t.date "data_demissao"
    t.boolean "ativo"
    t.bigint "pessoa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pessoa_id"], name: "index_funcionarios_on_pessoa_id"
  end

  create_table "meta_gastos", force: :cascade do |t|
    t.decimal "valor"
    t.datetime "data_expirar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "data_nascimento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "despesas", "categorias_despesas"
  add_foreign_key "funcionarios", "pessoas"
end
