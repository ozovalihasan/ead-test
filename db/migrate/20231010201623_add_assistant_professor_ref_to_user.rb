class AddAssistantProfessorRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :assistant_professor, null: true, foreign_key: { to_table: :teachers }, column: :assistant_professor_id
  end
end
