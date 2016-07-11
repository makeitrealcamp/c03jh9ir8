class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	def show
		@actor = Actor.find(params[:id])
	end

	def create
		@actor = Actor.new(actor_params)
		if @actor.save
			redirect_to action:'index'
		else 
			@errors = @actor.errors.messages
			render 'new'
		end	
	end

	private
	 def actor_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
   end
end
