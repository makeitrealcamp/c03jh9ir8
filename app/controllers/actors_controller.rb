class ActorsController < ApplicationController
	
	def index
		@actors = Actor.all
	end

	def show
		@actor = User.find(params[:id])
	end

	def new
		@actor = Actor.new
	end

	def create
		actor = Actor.create(user_params)
		redirect_to actors_path
	end

	def user_params
		params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :death_date, :death_place)
	end

end
