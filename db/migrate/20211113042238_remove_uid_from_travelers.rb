class RemoveUidFromTravelers < ActiveRecord::Migration[6.1]
  def change
    remove_column :travelers, :uid, :integer
  end
end
