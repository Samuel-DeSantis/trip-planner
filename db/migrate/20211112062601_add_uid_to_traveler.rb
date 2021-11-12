class AddUidToTraveler < ActiveRecord::Migration[6.1]
  def change
    add_column :travelers, :uid, :integer
  end
end
