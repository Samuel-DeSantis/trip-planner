class RemoveCountryIdFromLocations < ActiveRecord::Migration[6.1]
  def change
    remove_column :locations, :country_id, :integer
  end
end
