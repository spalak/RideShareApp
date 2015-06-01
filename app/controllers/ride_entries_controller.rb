class RideEntriesController < ApplicationController
	def index
		@ride_entries = RideEntry.all
	end

	def new
		@ride_entry = RideEntry.new
	end

	def create
		@ride_entry = RideEntry.new(ride_entry_params)
		if @ride_entry.save
			flash[:success] = "Added new ride entry"
			redirect_to ride_entries_path
		else
			flash[:error] = "There was a problem saving the ride entry"
			render action: :new
		end
	end

	private
	def ride_entry_params
		params[:ride_entry].permit(:content)
	end
end
