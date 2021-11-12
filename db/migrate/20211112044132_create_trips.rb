class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :traveler_id
      t.integer :location_id
      t.integer :cost

      t.timestamps
    end
  end
end
