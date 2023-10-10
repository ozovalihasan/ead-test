class AddDrivableRefToVehicle < ActiveRecord::Migration[7.1]
  def change
    add_reference :vehicles, :drivable, polymorphic: true, null: true
  end
end
