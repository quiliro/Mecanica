class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :ordens do |t|
      t.integer  :numero
      t.integer  :kilometraje
      t.integer  :autorizacion
      t.string   :custodio
      t.text     :observaciones
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :vehiculos do |t|
      t.string   :placa
      t.string   :marca
      t.string   :modelo
      t.string   :color
      t.integer  :anio
      t.string   :motor
      t.string   :chasis
      t.integer  :disco
      t.integer  :numero_de_automotor
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :clientes do |t|
      t.string   :name
      t.integer  :ci
      t.string   :direccion
      t.integer  :telefono
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :ordens
    drop_table :vehiculos
    drop_table :clientes
  end
end
