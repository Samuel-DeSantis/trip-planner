class RemoveCreatedAtAndUpdatedAtFromCountries < ActiveRecord::Migration[6.1]
  def change
    remove_column :countries, :created_at, :datetime
    remove_column :countries, :updated_at, :datetime
  end
end
