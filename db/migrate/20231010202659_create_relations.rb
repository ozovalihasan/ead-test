class CreateRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :relations do |t|

      t.timestamps
    end
  end
end
