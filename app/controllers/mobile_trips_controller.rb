class MobileTripsController < ApplicationController

	def new
	end 

	def create

		@trip = Trip.create(
			name: params[:name], 
			description: params[:description], 
			location: params[:location], 
			start_date: params[:start_date], 
			end_date: params[:end_date],
			creator_id: params[:creator_id] 
			)
		
	end 

end