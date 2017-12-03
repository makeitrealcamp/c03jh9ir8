class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	def create
		@actor = Actor.create(strongParams)
		puts @actor
		redirect_to '/actors'
 	end

	private
	def strongParams
		params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :alive, :death_date, :death_place)
		
	end

	
end
