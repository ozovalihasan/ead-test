class AddImageableRefToPicture < ActiveRecord::Migration[7.1]
  def change
    add_reference :pictures, :imageable, polymorphic: true, null: false
  end
end
