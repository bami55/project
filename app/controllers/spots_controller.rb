class SpotsController < ApplicationController

	def create
		@trip = Trip.find(params[:trip_id])
		@spot = @trip.spots.create(spot_params)
		redirect_to trip_path(@trip.id)
	end

	def destroy
		@trip = Trip.find(params[:id])
		@spot.destroy
		redirect_to trips_path
	end

	private

		def spot_params
			params[:spot].permit(:item)
		end

end
