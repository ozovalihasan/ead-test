class AddTeachableRefToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :teachable, polymorphic: true, null: true
  end
end
