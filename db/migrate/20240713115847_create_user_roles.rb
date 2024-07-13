class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.boolean :access_add
      t.boolean :access_edit
      t.boolean :access_update
      t.boolean :access_delete

      t.timestamps
    end
  end
end
