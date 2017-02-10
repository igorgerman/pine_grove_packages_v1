class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :apartment_id
      t.string :recipient_name
      t.boolean :collected
      t.string :image
      t.integer :user_id

      t.timestamps

    end
  end
end
