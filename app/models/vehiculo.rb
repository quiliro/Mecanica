class Vehiculo < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    placa               :string
    marca               :string
    modelo              :string
    color               :string
    anio                :integer
    motor               :string
    chasis              :string
    disco               :integer
    numero_de_automotor :integer
    timestamps
  end

  belongs_to :cliente

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
