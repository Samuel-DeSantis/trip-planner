class AddUsernameToTraveler < ActiveRecord::Migration[6.1]
  def change
    add_column :travelers, :username, :string
  end
end
