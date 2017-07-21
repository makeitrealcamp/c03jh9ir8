class ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end  

  def create
    if params[:alive] == true
      params[:death_date] = nil
      params[:death_place] = nil
    end
    actor = Actor.new(actor_params)
    if actor.save
      redirect_to actors_path
    else
      render :new
    end
  end

  private
    def actor_params
      params.require(:actor).permit(:name, :bio, :image_url, :birth_date, :birth_place, :alive, :death_date, :death_place)
    end

end
