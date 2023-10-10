class AddPostableRefToPicture < ActiveRecord::Migration[7.1]
  def change
    add_reference :pictures, :postable, polymorphic: true, null: false
  end
end
