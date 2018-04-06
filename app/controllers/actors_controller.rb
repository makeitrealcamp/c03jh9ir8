class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  def new
    @actor = Actor.new
  end
  def create
    @actor = Actor.new
    if @actor.save
      redirect_to actors_path(actor_params)
    else
      render :new
    end
  end
  def actor_params
      params.require(:actor).permit(:name, :image_url, :bio, :birth_date, :birth_place)
    end
end
