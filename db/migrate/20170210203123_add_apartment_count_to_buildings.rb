class AddApartmentCountToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :apartments_count, :integer
  end
end
