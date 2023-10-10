class AddSupervisorRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :supervisor, polymorphic: true, null: true
  end
end
