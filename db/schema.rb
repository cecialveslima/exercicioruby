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

ActiveRecord::Schema[7.0].define(version: 2022_06_13_113248) do
  create_table "categoria", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idCat"
    t.string "dscCat"
    t.integer "idDpto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idCli"
    t.string "nomCli"
    t.string "cpfCnpj"
    t.boolean "statusCli"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idDpto"
    t.string "dscDpto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "endereco_clientes", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idEndCli"
    t.integer "idCli"
    t.string "logradouro"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.boolean "endCorrespondencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_pedidos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idPedido"
    t.integer "idProd"
    t.integer "qtdItem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", charset: "utf8mb3", force: :cascade do |t|
    t.integer "codMar"
    t.string "dscMar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota_fiscals", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idNota"
    t.integer "idPedido"
    t.decimal "valorNota", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idPedido"
    t.integer "idCli"
    t.integer "idPgto"
    t.date "dataPedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plano_pgtos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idPlano"
    t.string "dscPlanoPagto"
    t.integer "idPgto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idProd"
    t.string "dscProd"
    t.integer "codMar"
    t.integer "idCat"
    t.decimal "valor", precision: 10
    t.integer "qtd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categoria", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idSubCat"
    t.string "dscSubCat"
    t.integer "idCat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_pgtos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "idPgto"
    t.string "dscPgto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
