class CreateAccountTeachers < ActiveRecord::Migration[8.0]
  def change
    create_table :account_teachers do |t|
      t.string :name
      t.integer :phone1
      t.integer :phone2
      t.string :sec_email
      t.string :note

      t.timestamps
    end
  end
end
