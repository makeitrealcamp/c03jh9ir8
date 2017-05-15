class ActorsController < ApplicationController


	def index
    	@actors_list = Actor.all
  	end


  	def new
  		@actor = Actor.new
      @actor.attributes = {birth_date: Time.new, death_date: Time.new}
  	end


  	def create
  		@actor = Actor.new(user_params)
  		if @actor.save
  			redirect_to actors_path
  		else
  			@errors = @actor.errors.full_messages
  			render 'actors/new'
  		end
  	end

  	def user_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :death_date, :death_place)
    end

end
