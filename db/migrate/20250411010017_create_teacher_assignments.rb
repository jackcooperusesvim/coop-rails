class CreateTeacherAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :teacher_assignments do |t|
      t.references :account_teacher, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
