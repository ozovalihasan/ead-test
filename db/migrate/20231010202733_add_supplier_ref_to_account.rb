class AddSupplierRefToAccount < ActiveRecord::Migration[7.1]
  def change
    add_reference :accounts, :supplier, null: false, foreign_key: true
  end
end
