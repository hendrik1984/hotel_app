class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users, bulk: true do |t|
      t.string :country
      t.string :phone_no
      t.string :id_card
    end
  end
end
