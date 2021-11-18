class AddCountryIdToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :country_id, :integer
  end
end
