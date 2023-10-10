class AddManagerRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :manager, null: true, foreign_key: { to_table: :users }, column: :manager_id
  end
end
