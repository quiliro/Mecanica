class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :ordens, :cliente_id, :integer

    add_column :vehiculos, :cliente_id, :integer

    add_index :ordens, [:cliente_id]

    add_index :vehiculos, [:cliente_id]
  end

  def self.down
    remove_column :ordens, :cliente_id

    remove_column :vehiculos, :cliente_id

    remove_index :ordens, :name => :index_ordens_on_cliente_id rescue ActiveRecord::StatementInvalid

    remove_index :vehiculos, :name => :index_vehiculos_on_cliente_id rescue ActiveRecord::StatementInvalid
  end
end
