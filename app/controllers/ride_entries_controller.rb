class RideEntriesController < ApplicationController
	def index
		@ride_entries = RideEntry.all
	end

	def new
		@ride_entry = RideEntry.new
	end
end
