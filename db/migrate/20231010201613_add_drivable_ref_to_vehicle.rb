class AddDrivableRefToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicles, :drivable, polymorphic: true, null: true
  end
end
