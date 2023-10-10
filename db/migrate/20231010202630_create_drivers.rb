class CreateDrivers < ActiveRecord::Migration[7.1]
  def change
    create_table :drivers do |t|

      t.timestamps
    end
  end
end
