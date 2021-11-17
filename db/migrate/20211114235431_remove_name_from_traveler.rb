class RemoveNameFromTraveler < ActiveRecord::Migration[6.1]
  def change
    remove_column :travelers, :name, :string
  end
end
