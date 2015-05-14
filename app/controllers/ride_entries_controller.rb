class RideEntriesController < ApplicationController
	def index
		@ride_entries = RideEntry.all
	end
end
