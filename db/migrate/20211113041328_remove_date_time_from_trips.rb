class RemoveDateTimeFromTrips < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :created_at, :datetime
    remove_column :trips, :updated_at, :datetime
  end
end
