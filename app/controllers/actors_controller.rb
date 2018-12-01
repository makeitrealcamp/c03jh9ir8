class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end



	def show
		@actor = Actor.find(params[:id])
	end



	def new
		@actor = Actor.new
	end



	def create
		@actor =Actor.new(actor_params)
		if @actor.save
		   redirect_to actors_path, notice: "El Actor fue publicado con exito"
		else
			render :new
		end
	end



	def actor_params
		params.require(:actor).permit(:name)	
	end
end
