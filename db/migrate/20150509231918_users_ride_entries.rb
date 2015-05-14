class UsersRideEntries < ActiveRecord::Migration
  def change
  	create_table :users_ride_entries do |t|
  		t.belongs_to :user, :ride_entry
  		t.timestamps
  	end
  end
end
