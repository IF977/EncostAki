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

ActiveRecord::Schema.define(version: 20171024003503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "risk_areas", force: :cascade do |t|
    t.string "regional"
    t.string "endereco"
    t.string "bairro"
    t.string "localidade"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "ano"
    t.integer "mes"
    t.integer "processo_numero"
    t.date "solicitacao_data"
    t.datetime "solicitacao_hora"
    t.string "solicitacao_descricao"
    t.string "solicitacao_regional"
    t.string "solicitacao_bairro"
    t.string "solicitacao_localidade"
    t.string "solicitacao_endereco"
    t.string "solicitacao_roteiro"
    t.integer "rpa_codigo"
    t.string "rpa_nome"
    t.string "solicitacao_microrregiao"
    t.string "solicitacao_plantao"
    t.string "solicitacao_origem_chamado"
    t.float "latitude"
    t.float "longitude"
    t.string "solicitacao_vitimas"
    t.string "solicitacao_vitimas_fatais"
    t.string "processo_tipo"
    t.string "processo_origem"
    t.string "processo_localizacao"
    t.string "processo_status"
    t.string "processo_data_conclusao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "Fname"
    t.string "Mname"
    t.string "username"
    t.integer "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
