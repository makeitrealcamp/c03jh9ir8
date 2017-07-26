class ActorsController < ApplicationController

	def show

		@actors = Actor.all 

	end


	def new
		@actor = Actor.new

	end

	def create

		actor = Actor.new(actor_params)
		if actor.save 
			redirect_to show_actor_path(actor)
		else
			render :new
		end

	end

	private 
	def actor_params 
		params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :death_date, :death_date)
	end




end
