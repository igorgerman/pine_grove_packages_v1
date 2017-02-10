class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :apartment_number
      t.integer :building_id

      t.timestamps

    end
  end
end
