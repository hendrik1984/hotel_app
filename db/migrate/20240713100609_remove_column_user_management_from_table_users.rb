class RemoveColumnUserManagementFromTableUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :address
    remove_column :users, :gender
    remove_column :users, :country
    remove_column :users, :phone_no
    remove_column :users, :id_card
    remove_column :users, :image
    remove_column :users, :role
  end
end
