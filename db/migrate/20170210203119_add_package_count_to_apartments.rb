class AddPackageCountToApartments < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :packages_count, :integer
  end
end
