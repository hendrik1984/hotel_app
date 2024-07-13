class RemoveColumnFromTableUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :marital_status
    remove_column :users, :ktp_id
    remove_column :users, :blood_type
    remove_column :users, :phone_number
    remove_column :users, :role
  end
end
