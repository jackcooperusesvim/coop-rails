class CreateAccountFamilies < ActiveRecord::Migration[8.0]
  def change
    create_table :account_families do |t|
      t.string :main_parent, null: false
      t.string :sec_parent, null: false
      t.string :last_name, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip, null: false
      t.integer :phone1, null: false
      t.integer :phone2, null: false
      t.integer :phone3
      t.string :email, null: false
      t.text :note

      t.timestamps
    end
  end
end
