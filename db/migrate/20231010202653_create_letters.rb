class CreateLetters < ActiveRecord::Migration[7.1]
  def change
    create_table :letters do |t|

      t.timestamps
    end
  end
end
