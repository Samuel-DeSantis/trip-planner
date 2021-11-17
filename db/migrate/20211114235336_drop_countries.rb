class DropCountries < ActiveRecord::Migration[6.1]
  def change
    drop_table :countries
  end
end
