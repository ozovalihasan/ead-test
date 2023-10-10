class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :type
      t.string :full_name
      t.string :branch

      t.timestamps
    end
  end
end
