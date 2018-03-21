class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new 
	end

	def create
		@actor = Actor.new(params_application)
		if @actor.save
			redirect_to actors_path
		else
			render :new
		end
		
	end
	private
	def params_application
		params.require(:actor).permit(:name,:bio,:birth_date,:birth_place,:image_url,:alive,:death_date,:death_place)
		
	end
end
