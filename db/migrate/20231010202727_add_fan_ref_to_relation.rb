class AddFanRefToRelation < ActiveRecord::Migration[7.1]
  def change
    add_reference :relations, :fan, null: false, foreign_key: { to_table: :users }
  end
end
