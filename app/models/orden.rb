class Orden < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    numero        :integer
    kilometraje   :integer
    autorizacion  :integer
    custodio      :string
    observaciones :text
    timestamps
  end

  belongs_to :cliente, :accessible => true

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
