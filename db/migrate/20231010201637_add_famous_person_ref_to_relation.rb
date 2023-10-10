class AddFamousPersonRefToRelation < ActiveRecord::Migration[7.0]
  def change
    add_reference :relations, :famous_person, null: false, foreign_key: { to_table: :users }
  end
end
