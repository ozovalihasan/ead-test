class AddCustomerRepresentativeRefToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :customer_representative, polymorphic: true, null: true
  end
end
