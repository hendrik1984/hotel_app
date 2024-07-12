class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :gender
      t.string :country
      t.string :phone_no
      t.string :identity_no
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
