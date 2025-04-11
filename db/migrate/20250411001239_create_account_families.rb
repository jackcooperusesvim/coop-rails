class CreateAccountFamilies < ActiveRecord::Migration[8.0]
  def change
    create_table :account_families do |t|
      t.string :main_parent
      t.string :sec_parent
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone1
      t.integer :phone2
      t.integer :phone3
      t.string :email
      t.text :note

      t.timestamps
    end
  end
end
