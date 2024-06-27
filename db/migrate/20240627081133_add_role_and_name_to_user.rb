class AddRoleAndNameToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users, bulk: true do |t|
      t.text :address
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :gender
      t.string :marital_status
      t.string :ktp_id
      t.string :blood_type
      t.string :phone_number
    end
  end
end
