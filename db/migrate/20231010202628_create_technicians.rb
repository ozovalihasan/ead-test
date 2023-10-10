class CreateTechnicians < ActiveRecord::Migration[7.1]
  def change
    create_table :technicians do |t|

      t.timestamps
    end
  end
end
