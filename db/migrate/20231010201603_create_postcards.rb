class CreatePostcards < ActiveRecord::Migration[7.0]
  def change
    create_table :postcards do |t|

      t.timestamps
    end
  end
end
