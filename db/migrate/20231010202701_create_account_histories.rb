class CreateAccountHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :account_histories do |t|
      t.integer :credit_rating
      t.datetime :access_time

      t.timestamps
    end
  end
end
