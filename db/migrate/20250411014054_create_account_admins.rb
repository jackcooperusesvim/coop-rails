class CreateAccountAdmins < ActiveRecord::Migration[8.0]
  def change
    create_table :account_admins do |t|
      t.string :name
      t.integer :permission_level

      t.timestamps
    end
  end
end
