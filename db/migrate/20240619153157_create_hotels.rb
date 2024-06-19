class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.integer :stars
      t.datetime :check_in_time
      t.datetime :check_out_time

      t.timestamps
    end
  end
end
