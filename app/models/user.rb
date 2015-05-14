class User < ActiveRecord::Base
	has_and_belongs_to_many :ride_entries, :join_table => "users_ride_entries"
end
