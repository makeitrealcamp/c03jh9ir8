class ActorsController < ApplicationController

	def index
		@actors = Actor.all 
	end

	# def show
	# 	@actor = Actor.find(params[:id])
	# end

	def new	
	end

	def create
  		@actor = Actor.new(actor_params)
 
  		@actor.save
  		redirect_to actors_path
	end

	private
		def actor_params
			params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url)
		end

end
