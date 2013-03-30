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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130328173655) do

  create_table "camaras", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "grupo_parlamentarios", :force => true do |t|
    t.string   "nombre"
    t.integer  "partido_id"
    t.integer  "camara_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "ref"
    t.string   "nombreCorto"
  end

  create_table "legislatura_politicos", :force => true do |t|
    t.date     "fechaAlta"
    t.date     "fechaBaja"
    t.boolean  "enActivo"
    t.integer  "politico_id"
    t.integer  "legislatura_id"
    t.integer  "grupoParlamentario_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "legislaturas", :force => true do |t|
    t.integer  "num"
    t.date     "fechaInicio"
    t.date     "fechaFin"
    t.integer  "camara_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "partidos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "siglas"
  end

  create_table "politicos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pres", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resultado_politico_grupos", :force => true do |t|
    t.integer  "votacion_id"
    t.integer  "grupoParlamentario_id"
    t.text     "votos",                                 :comment => "JSON Encoded field"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "resultado_politicos", :force => true do |t|
    t.integer  "numVotan"
    t.integer  "numNoVotan"
    t.integer  "aFavor"
    t.integer  "enContra"
    t.integer  "abstencion"
    t.integer  "votacion_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "resultado_votantes", :force => true do |t|
    t.integer  "numVotan"
    t.integer  "numNoVotan"
    t.integer  "aFavor"
    t.integer  "enContra"
    t.integer  "abstencion"
    t.integer  "votacion_web_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "sesiones", :force => true do |t|
    t.string   "ref"
    t.string   "titulo"
    t.text     "descripcion"
    t.date     "fecha"
    t.integer  "legislatura_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "votante_id"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "votacion_webs", :force => true do |t|
    t.integer  "votacion_id"
    t.string   "ref"
    t.string   "titulo"
    t.text     "descripcion"
    t.boolean  "enabled",     :default => true
    t.boolean  "frontpage",   :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "votaciones", :force => true do |t|
    t.string   "ref"
    t.string   "titulo"
    t.text     "descripcion"
    t.date     "fecha"
    t.integer  "sesion_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "enabled",     :default => true
    t.boolean  "frontpage",   :default => false
  end

  create_table "votantes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "voto_politicos", :force => true do |t|
    t.string   "voto"
    t.integer  "politico_id"
    t.integer  "votacion_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "voto_votantes", :force => true do |t|
    t.string   "voto"
    t.date     "fecha"
    t.integer  "votante_id"
    t.integer  "votacion_web_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
