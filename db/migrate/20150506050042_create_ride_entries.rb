class CreateRideEntries < ActiveRecord::Migration
  def change
    create_table :ride_entries do |t|
    	t.string :location
    	t.date :start_date
    	t.time :start_time

      t.timestamps null: false
    end
  end
end
