class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @new_actor = Actor.new
  end
  
  def create
    params = user_params 
    params[:alive] = params[:alive].to_i.zero?
    if (params[:alive])
      params[:death_date].clear
      params[:death_place].clear
    end
    @new_actor = Actor.new(params)
    @new_actor.save
    redirect_to actors_path
  end
  
  
  private
		def user_params
			params.require(:actor).permit(:name, :birth_date, :birth_place, :alive, :death_date, :death_place, :bio, :image_url)
		end	
  
end
