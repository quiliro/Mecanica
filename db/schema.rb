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

ActiveRecord::Schema.define(:version => 20110429210307) do

  create_table "clientes", :force => true do |t|
    t.string   "name"
    t.integer  "ci"
    t.string   "direccion"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordens", :force => true do |t|
    t.integer  "numero"
    t.integer  "kilometraje"
    t.integer  "autorizacion"
    t.string   "custodio"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cliente_id"
  end

  add_index "ordens", ["cliente_id"], :name => "index_ordens_on_cliente_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "invited"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

  create_table "vehiculos", :force => true do |t|
    t.string   "placa"
    t.string   "marca"
    t.string   "modelo"
    t.string   "color"
    t.integer  "anio"
    t.string   "motor"
    t.string   "chasis"
    t.integer  "disco"
    t.integer  "numero_de_automotor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cliente_id"
  end

  add_index "vehiculos", ["cliente_id"], :name => "index_vehiculos_on_cliente_id"

end
