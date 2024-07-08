class AddFieldsGeoCountryToHotels < ActiveRecord::Migration[7.0]
  def change
    change_table :hotels, bulk: true do |t|
      t.string :geolocation
      t.string :descriptions
      t.string :country
      t.integer :score
    end
  end
end
