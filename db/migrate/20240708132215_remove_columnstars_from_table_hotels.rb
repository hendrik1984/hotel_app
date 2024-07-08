class RemoveColumnstarsFromTableHotels < ActiveRecord::Migration[7.0]
  def change
    remove_column :hotels, :stars
    remove_column :hotels, :check_in_time
    remove_column :hotels, :check_out_time
  end
end
