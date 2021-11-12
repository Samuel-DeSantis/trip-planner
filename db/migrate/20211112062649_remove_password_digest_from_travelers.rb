class RemovePasswordDigestFromTravelers < ActiveRecord::Migration[6.1]
  def change
    remove_column :travelers, :password_digest
  end
end
