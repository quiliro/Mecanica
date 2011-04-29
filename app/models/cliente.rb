class Cliente < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name      :string
    ci        :integer
    direccion :string
    telefono  :integer
    timestamps
  end

  has_many :vehiculos, :accessible => true
  has_many :ordens

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
