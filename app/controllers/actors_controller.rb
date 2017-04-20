class ActorsController < ApplicationController

	def index
    	@actors_list = Actor.all
    	render 'actor/index'
  	end

end
