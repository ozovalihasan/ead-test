class AddAccountRefToAccountHistory < ActiveRecord::Migration[7.0]
  def change
    add_reference :account_histories, :account, null: false, foreign_key: true
  end
end
