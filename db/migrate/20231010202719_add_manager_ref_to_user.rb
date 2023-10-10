class AddManagerRefToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :manager, null: true, foreign_key: { to_table: :users }
  end
end
