class AddAssistantProfessorRefToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :assistant_professor, null: true, foreign_key: { to_table: :teachers }
  end
end
