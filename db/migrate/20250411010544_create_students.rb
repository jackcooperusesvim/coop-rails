class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.date :birthday
      t.integer :grade_offset
      t.references :account_family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
