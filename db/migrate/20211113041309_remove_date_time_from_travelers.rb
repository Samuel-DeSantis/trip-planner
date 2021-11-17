class RemoveDateTimeFromTravelers < ActiveRecord::Migration[6.1]
  def change
    remove_column :travelers, :created_at, :datetime
    remove_column :travelers, :updated_at, :datetime
  end
end
