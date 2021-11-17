class RemoveDateTimeFromLocations < ActiveRecord::Migration[6.1]
  def change
    remove_column :locations, :created_at, :datetime
    remove_column :locations, :updated_at, :datetime
  end
end
