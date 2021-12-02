class AddDateToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :date, :string
  end
end
