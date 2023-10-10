class AddTechnicianRefToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicles, :technician, null: true, foreign_key: true
  end
end
