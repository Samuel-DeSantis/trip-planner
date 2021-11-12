class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.integer :country_id

      t.timestamps
    end
  end
end
